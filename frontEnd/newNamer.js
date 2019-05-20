function initNamer() {

    let theOptions = mockFetchOptions();
    let theSelect = document.getElementById("optionMenu");
    for (elementIndex in theOptions) {
        let val = theOptions[elementIndex];
        let option = document.createElement("option");
        option.text = val;
        theSelect.appendChild(option);
    }

    // a test to make sure axios library works axiosTest()
}


function mockFetchOptions() {
    return ["us", "gnome", "troll"];
}


function mockRequestNames() {
    let theSelect = document.getElementById("optionMenu");
}



//function axiosTest(){
//let result= axios.get('http://localhost:4242/generate-names');
//alert(JSON.stringify(result));
//return result;
//}

function hunchentootTest() {
    let result = axios.get('http://localhost:4242/generate-names');
    alert(JSON.stringify(result));
}

// axios.get('http://localhost:4242/generate-names')

function getGeneratedNames() {
    axios.get('http://localhost:4242/generate-names')
        .then(function (response) {
            let outputParagraph = document.getElementById('generatedNames');
            outputParagraph.innerText = JSON.stringify(response.data);
        })
}