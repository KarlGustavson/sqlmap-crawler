#pip install google
#insert between '< and >' your Searchterm.
#view google module for optional search parameters, http://pythonhosted.org/google/
from google import search
out=open("links.txt","w")
for title in search('<YOUR SEARCH TERM>', stop=100, pause=4.5, num=100, start=10):
            out.write(title)
            out.write("\n")
out.close()
