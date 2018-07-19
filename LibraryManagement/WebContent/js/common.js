function checkall(ids){
	try {
		var checkedcount = 0;
		var checkObj = document.getElementsByName(ids);
		for (var i = 0; i < checkObj.length; i++) {
			if (checkObj[i].checked) {
				checkedcount++;
			}
		}
		if (checkedcount == checkObj.length) {
			for (var i = 0; i < checkObj.length; i++) {
				checkObj[i].checked = false;
			}
		} else {
			for (var i = 0; i < checkObj.length; i++) {
				checkObj[i].checked = true;
			}
		}
	}
	catch (ex) {
	}
}
function  hasChecked(listform){
	var rtn = 0;
	with(listform){
	for(var i=0;i<length;i++){
		if((elements[i].type=="checkbox"))		
			if(elements[i].checked==true){rtn = rtn +1;}
	}
	}
	if (rtn>0)
		return true;
	else
		return false;
}