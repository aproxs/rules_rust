#[cxx::bridge]
mod ffi {
    struct BlobMetadata {
        size: usize,
        tags: Vec<String>,
    }

    extern "Rust" {
        // ...
    }

    unsafe extern "C++" {
        // ...
        fn tag(&self, blobid: u64, tag: &str);
        fn metadata(&self, blobid: u64) -> BlobMetadata;
    }
}

fn main() {
    let client = ffi::new_blobstore_client();

    // Upload a blob.
    let chunks = vec![b"fearless".to_vec(), b"concurrency".to_vec()];
    let mut buf = MultiBuf { chunks, pos: 0 };
    let blobid = client.put(&mut buf);
    println!("blobid = {}", blobid);

    // Add a tag.
    client.tag(blobid, "rust");

    // Read back the tags.
    let metadata = client.metadata(blobid);
    println!("tags = {:?}", metadata.tags);
}
