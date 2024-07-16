import os

def decrypt_filename(encrypted_filename):
    decrypted_bytes = [byte ^ 0x37 for byte in encrypted_filename.to_bytes(8, byteorder='big')]
    return ''.join([chr(byte) if 32 <= byte <= 126 else f'\\x{byte:02x}' for byte in decrypted_bytes])

def open_box(filename):
    try:
        file_descriptor = os.open(filename, os.O_RDONLY)
        if file_descriptor > 0:
            print(f"[*] Box Opened Successfully for {filename}")
            os.close(file_descriptor)
            return True
        else:
            print("[X] Error: Box Not Found")
            return False
    except FileNotFoundError:
        print(f"[X] Error: File Not Found - {filename}")
        return False
    except Exception as e:
        print(f"[X] Error: {str(e)}")
        return False

def main():
    encrypted_filename = 0x540345434c75637f
    decrypted_filename = decrypt_filename(encrypted_filename)
    
    if open_box(decrypted_filename):
        print(f"HTB{{{decrypted_filename}}}")

if __name__ == "__main__":
    main()
