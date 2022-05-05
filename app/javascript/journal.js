//Replace the feeling text and gratitude status in a journal entry with an emoji and status icon, respectively.
window.addEventListener("load", iconChange);
function iconChange(){
	let log = document.getElementsByClassName("log");
	for(let i = 0; i < log.length; i++){
		let feeling = document.getElementsByClassName("feeling")[i].innerHTML, emoji;
		if(feeling == "depressed"){
			emoji = feeling.replace("depressed", '<img src="/assets/depressed-emoji.png" alt="A depressed emoji." title="Depressed emoji.">');
			document.getElementsByClassName("feeling")[i].innerHTML = emoji;
		} else if(feeling == "sad"){
			emoji = feeling.replace("sad", '<img src="/assets/sad-emoji.png" alt="A sad emoji." title="Sad emoji.">');
			document.getElementsByClassName("feeling")[i].innerHTML = emoji;
		} else if(feeling == "apathetic"){
			emoji = feeling.replace("apathetic", '<img src="/assets/apathetic-emoji.png" alt="An apathetic emoji. title="Apathetic emoji.">');
			document.getElementsByClassName("feeling")[i].innerHTML = emoji;
		} else if(feeling == "happy"){
			emoji = feeling.replace("happy", '<img src="/assets/happy-emoji.png" alt="A happy emoji." title="Happy emoji.">');
			document.getElementsByClassName("feeling")[i].innerHTML = emoji;
		} else if(feeling == "excited"){
			emoji = feeling.replace("excited", '<img src="/assets/excited-emoji.png" alt="An excited emoji." title="Excited emoji.">');
			document.getElementsByClassName("feeling")[i].innerHTML = emoji;
		} else if(feeling == "love"){
			emoji = feeling.replace("love", '<img src="/assets/love-emoji.png" alt="A love emoji." title="Love emoji.">');
			document.getElementsByClassName("feeling")[i].innerHTML = emoji;
		}
		let gratitude = document.getElementsByClassName("gratitude")[i].innerHTML;
		if(gratitude == "true"){
			let successTick = gratitude.replace("true", '<img src="/assets/success-tick.png" alt="A tick for true." title="A tick for true.">');
			document.getElementsByClassName("gratitude")[i].innerHTML = successTick;
		} else{
			let errorTick = gratitude.replace("false", '<img src="/assets/error-cross.png" alt="An X for false." title="An X for false.">');
			document.getElementsByClassName("gratitude")[i].innerHTML = errorTick;
		}
	}
}
//Replace the ent headings on the 'journal' and 'thoughts' pages when entries and records are present.
window.addEventListener("load", entCheck);
function entCheck(){
	let log = document.getElementsByClassName("log"), rec = document.getElementsByClassName("rec"), ent = document.getElementById("ent-heading").innerHTML, res = document.getElementById("result");
	for(let i = 0; i < log.length; i++){
		let result = log.length;
		if(ent == "Currently, you have no entries"){
			let update = ent.replace(ent, "Your entries");
			document.getElementById("ent-heading").innerHTML = update;
			if(result == 1){
				res.innerHTML = "Displaying " + result + " entry.";
			} else{
				res.innerHTML = "Displaying " + result + " entries.";
			}
		}
	}
	for(let i = 0; i < rec.length; i++){
		let result = rec.length;
		if(ent == "Currently, you have no records"){
			let update = ent.replace(ent, "Your records");
			document.getElementById("ent-heading").innerHTML = update;
			if(result == 1){
				res.innerHTML = "Displaying " + result + " record.";
			} else{
				res.innerHTML = "Displaying " + result + " records.";
			}
		}
	}
}
//Checks the radio button of the feeling when the emoji is clicked.
let m = document.getElementsByClassName("mood");
for(let i = 0; i < m.length; i++){
	m[i].addEventListener("click", function(){
		document.querySelectorAll("input[type='radio']")[i].checked = true;
	});
	m[i].addEventListener("mouseover", function(){
		document.querySelectorAll(".mood > img")[i].setAttribute("class", "greyscale");
	});
	m[i].addEventListener("mouseout", function(){
		document.querySelectorAll(".mood > img")[i].removeAttribute("class", "greyscale");
	});
}