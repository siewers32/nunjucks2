const fs = require('fs');
const path = require('path');

const sourceDirs = ["css", "images", "js"]
const sourcePath = "src"
const destinationDir = "output"

console.log("source-folder is: " + sourcePath)
console.log("destination-folder is: " + destinationDir)

for(i=0;i<sourceDirs.length;i++) {
    // console.log(sourceDirs[i], sourcePath)
    copyDir(sourceDirs[i], sourcePath, destinationDir);
}

function copyDir(sDir, sPath, dPath) {
    const sourceDir = `${sPath}/${sDir}`;
    const destinationDir = `${dPath}/${sDir}`
    // Controleer of de doelmap bestaat; zo niet, maak hem aan
    if (!fs.existsSync(destinationDir)) {
        fs.mkdirSync(destinationDir, { recursive: true });
    }

    fs.readdir(sourceDir, (err, files) => {
        if (err) {
            console.error(`Fout bij lezen van bronmap: ${err}`);
            return;
        }

        files.forEach(file => {
            const sourceFile = path.join(sourceDir, file);
            const destinationFile = path.join(destinationDir, file);

            // Kopieer bestand
            fs.copyFile(sourceFile, destinationFile, err => {
                if (err) {
                    console.error(`Fout bij kopiëren van ${file}: ${err}`);
                } else {
                    console.log(`Bestand gekopieerd: ${sourceDir}/${file} to ${destinationDir}/${file}`);
                }
            });
        });
    });
}


