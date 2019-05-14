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


function mockRequestNames (){
    let theSelect = document.getElementById("optionMenu");
}



//function axiosTest(){
    //let result= axios.get('http://mars.local:5984');
    //alert(JSON.stringify(result));
    //return result;
//}