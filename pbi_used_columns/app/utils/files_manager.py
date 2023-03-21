from zipfile import ZipFile

def unzip_pbit(filename: str, destination: str, members: list):
    """Procedure that unzip pbit file and storage in destination folder

    Args:
        filename (str): name of the pbit file
        destination (str): folder in wich extracted files are going to be storage
        members (list): list of unzip folders that are usefull
    """
    filepath = f"files/{filename}"
    
    with ZipFile(filepath, 'r') as zObject:
        zObject.extractall(members=members, path=destination)