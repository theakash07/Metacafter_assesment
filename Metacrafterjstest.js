// Define a variable to store NFTs metadata
const NFTsArray = [];

// Function to create an NFT object and add it to the array
function mintNFT(name, eyeColor, shirtType, billing) {
    // Create an NFT object with the provided metadata
    const newNFT = {
        "name": name,
        "eyeColor": eyeColor,
        "shirtType": shirtType,
        "billing": billing
    };
    // Add the new NFT object to the array
    NFTsArray.push(newNFT);
    // Log a message indicating the NFT has been minted
    console.log("Minted: " + name);
}

// Function to list all NFTs metadata
function listNFTs() {
    // Loop through the array of NFTs
    for (let i = 0; i < NFTsArray.length; i++) {
        // Log the metadata of each NFT
        console.log("\nID: " + (i + 1));
        console.log("Name: " + NFTsArray[i].name);
        console.log("Eye Color: " + NFTsArray[i].eyeColor);
        console.log("Shirt Type: " + NFTsArray[i].shirtType);
        console.log("Billing: " + NFTsArray[i].billing);
    }
}

// Function to get the total number of minted NFTs
function getTotalSupply() {
    // Log the total number of NFTs in the array
    console.log("Total NFTs: " + NFTsArray.length);
}

// Mint some NFTs
mintNFT("bob", "blue", "Hoodie", "Gold chain");
mintNFT("meta", "Cyan", "Hoodie", "Gold chain");
mintNFT("crafter", "black", "Hoodie", "Gold chain");
mintNFT("sky", "Purple", "Hoodie", "Gold chain");

// List all minted NFTs
listNFTs();

// Display the total number of minted NFTs
getTotalSupply();
