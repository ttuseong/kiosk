// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable({
	  order: [[1, 'desc']], // asc 또는 desc
	  ordering: true,
  });
  
});
