//Lab 04
function loadData(name){
    if ( name == "btn1" ){
        document.getElementById("para").innerHTML = "The iPhone is a smartphone made by Apple that combines a computer, iPod, digital camera and cellular phone into one device with a touchscreen interface. The iPhone runs the iOS operating system, and in 2021 when the iPhone 13 was introduced, it offered up to 1 TB of storage and a 12-megapixel camera.";
        document.getElementById("image1").src = "images/iphone.jpg"
    } else if ( name == "btn2"){
        document.getElementById("para").innerHTML = "Nokia Corp (Nokia) is a communications and information technology company that operates in the areas of network infrastructure and advanced technologies. It offers fixed networks, mobile phones, WiFi systems, IP routing, subscriber data management, network implementation, network modernization, IoT, and 5G services.";
        document.getElementById("image1").src = "images/Nokia.webp"
    } else if ( name == "btn3"){
        document.getElementById("para").innerHTML = "Samsung was founded as a grocery trading store on March 1, 1938, by Lee Byung-Chull. He started his business in Taegu, Korea, trading noodles and other goods produced in and around the city and exporting them to China and its provinces. (The company name, Samsung, came from the Korean for “three stars.”) After the Korean War, Lee expanded his business into textiles and opened the largest woolen mill in Korea. He focused heavily on industrialization with the goal of helping his country redevelop itself after the war. During that period his business benefited from the new protectionist policies adopted by the Korean government, whose aim was to help large domestic conglomerates (chaebol) by shielding them from competition and providing them easy financing. In the late 1950s the company acquired three of Korea’s largest commercial banks as well as an insurance company and firms that made cement and fertilizer. Samsung in the 1960s acquired more insurance companies as well as an oil refinery, a nylon company, and a department store.During the 1970s the company expanded its textile-manufacturing processes to cover the full line of production—from raw materials all the way to the end product—to better compete in the textile industry. New subsidiaries such as Samsung Heavy Industries, Samsung Shipbuilding, and Samsung Precision Company (Samsung Techwin) were established. Also, during the same period, the company started to invest in the heavy, chemical, and petrochemical industries, providing the company a promising growth path.";
        document.getElementById("image1").src = "images/Samsung.webp"
    } else if ( name == "btn4"){
        document.getElementById("para").innerHTML = "Guangdong Oppo Mobile Telecommunications Corp., Ltd, doing business as OPPO, is a Chinese consumer electronics manufacturer headquartered in Dongguan, Guangdong. Its major product lines include smartphones, smart devices, audio devices, power banks, and other electronic products.";
        document.getElementById("image1").src = "images/Oppo.webp"
    } else if ( name == "btn5"){
        document.getElementById("para").innerHTML = "Xiaomi Corporation was founded in April 2010 and listed on the Main Board of the Hong Kong Stock Exchange on July 9, 2018(1810.HK). Xiaomi is a consumer electronics and smart manufacturing company with smartphones and smart hardware connected by an IoT platform at its core.";
        document.getElementById("image1").src = "images/Xiaomi.jpg"
    }
}

//Array in For Loop
function priceForLoop(){
    var phone = ["IPhone = Rs 1349/=","Nokia = Rs 599/=","Samsung = Rs 399/="];

    for (i=0, len = phone.length, list="List of Average Prices (using For Loop) <br><br>"; i < len; i++ ){
        list += phone[i] + "<br>";
    }

    document.getElementById("image1").src = "images/List.jpg";
    document.getElementById("para").innerHTML = list;
}

//Array in For In Loop
function priceForInLoop(){
    var phone = [];
    phone["IPhone"] = "Rs 1349/=";
    phone["Nokia"] = "Rs 1200/=";
    phone["Samsung"] = "Rs 1300/=";
    phone["Oppo"] = "Rs 599/=";
    phone["Xiaomi"] = "Rs 399/=";

    var list = "List of Average Prices (using For In Loop)<br><br>";

    for ( var item in phone){
        list += item + " : " + phone[item] + "<br>";
    }

    document.getElementById("image1").src = "images/List.jpg";
    document.getElementById("para").innerHTML = list;
}

//Prices higher than 1000
function priceHigher(){
    var phone = [];
    phone["IPhone"] = "1349";
    phone["Nokia"] = "1200";
    phone["Samsung"] = "1300";
    phone["Oppo"] = "599";
    phone["Xiaomi"] = "399";

    var list = "List of prices higher than Rs 1000<br><br>";

    for ( var item in phone ){
        if(phone[item] > 1000){
            list += item + " : " + " Rs " +phone[item] + "/=" +"<br>";
        }
    }

    document.getElementById("image1").src = "images/List.jpg";
    document.getElementById("para").innerHTML = list;
}

//Prices lower than 800
function pricelower(){
    var phone = [];
    phone["IPhone"] = "1349";
    phone["Nokia"] = "1200";
    phone["Samsung"] = "1300";
    phone["Oppo"] = "599";
    phone["Xiaomi"] = "399";

    var list = "List of prices lower than Rs 800<br><br>";

    for ( var item in phone ){
        if(phone[item] < 800){
            list += item + " : " + " Rs " +phone[item] + "/=" +"<br>";
        }
    }

    document.getElementById("image1").src = "images/List.jpg";
    document.getElementById("para").innerHTML = list;
}

//Lab 05
function checkPassword(){
    if(document.getElementById("psw").value != document.getElementById("repsw").value){
        alert("Password Mismatch!");
        return false;
    }else{
        alert("Success!");
        return true;
    }
}

function enableButton(){
    if(document.getElementById("checkbox").checked){
        document.getElementById("submitbtn").disabled = false;
    }else{
        document.getElementById("submitbtn").disabled = true;
    }
}