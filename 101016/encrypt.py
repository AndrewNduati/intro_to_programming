import sys

def open_file(file): #opens file
	f=open(file,"r")
	text=f.read()
	f.close()
	return text

def write_file(filename, message): #Writes the files
    with open(filename, 'w') as f: #Sets write mode
        f.write(message)

    f.close()


def encryption (txt,key):
	text= open_file(txt)
	output= ""
	#Convert to Ascii Then Apply Caesar cypher
	for i in text:
		list_word=ord(i) #ordinance changes the character to it's ASCII value
		cy=(list_word+key)%256 #Caesar cypher Encryption as a mathematical expression. %256 because of the ASCII value sets.

		output+=chr(cy) #incrementing output. It would have otherwise replaced the value of output. Also chr writes the string output of the Ascii values
		
	return output
	

def decryption (txt, key):
	text= open_file(txt)
	key = int(key)
	
	output = ""
	for i in text:
		output += chr ( (ord(i) - key) % 256)# Because ASCII is limited to 256 characters
		
	return output	

		

#running the program on the Terminal
encrypt_case = sys.argv[3]
private_key = int(sys.argv[2])

if encrypt_case == '--encrypt':
    plaintext_file = sys.argv[1]
    encrypted_message = encryption(plaintext_file, private_key)
    print encrypted_message
    write_file(plaintext_file, encrypted_message)
elif encrypt_case == '--decrypt':
    ciphertext_file = sys.argv[1]
    decrypted_message = decryption(ciphertext_file, private_key)
    print decrypted_message
    write_file(ciphertext_file, decrypted_message)
else:
    print "We don't encrypt such words!!!"
