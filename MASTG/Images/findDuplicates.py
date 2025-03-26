import hashlib
import os

def calculate_md5(file_path):
    """Calculate the MD5 checksum of a file."""
    hash_md5 = hashlib.md5()
    with open(file_path, "rb") as f:
        for chunk in iter(lambda: f.read(4096), b""):
            hash_md5.update(chunk)
    return hash_md5.hexdigest()

def find_duplicates(files):
    """Find and print files with the same name but different MD5 checksums."""
    file_hashes = {}

    for file_path in files:
        file_path = file_path.strip()
        if not file_path or os.path.isdir(file_path):
            continue 
        if not os.path.isfile(file_path):
            print(f"Skipping non-file: {file_path}")
            continue

        file_name = os.path.basename(file_path)
        file_md5 = calculate_md5(file_path)

        if file_name in file_hashes:
            if file_md5 != file_hashes[file_name]:
                print(f"Duplicate file name with different content found: {file_name}")
                print(f" - {file_hashes[file_name]} vs {file_md5}")
        else:
            file_hashes[file_name] = file_md5

# List of file paths
file_list = [
    "path/to/first/file.txt",
    "path/to/second/file.txt",
    # Add more file paths here
]

with open("files.txt", "r") as f:
    file_list = f.readlines()

find_duplicates(file_list)
