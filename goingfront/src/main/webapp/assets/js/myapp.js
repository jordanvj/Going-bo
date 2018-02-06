$(function(){
	//solving active menu problem
	switch(menu) {
	case 'Hotels':
		$('#hotels').addClass('active');
		break;
	case 'Buses':
		$('#buses').addClass('active');
		break;
	case 'About':
		$('#about').addClass('active');
		break;
	default:
		$('#flights').addClass('active');
		break;
	
	}
});