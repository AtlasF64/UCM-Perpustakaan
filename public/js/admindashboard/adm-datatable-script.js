$(document).ready(function() {
    var table = $('#example').DataTable( {
        lengthChange: true,
        buttons: ['excel', 'pdf', 'colvis' ]
        
    } );
 
    table.buttons().container()
        .appendTo( '#example_wrapper .col-md-6:eq(0)' );
    table.lengthChange()
} );

// $(document).ready(function() {
//     $('#example').DataTable( {
//         lengthMenu: [
//             [ 10, 25, 50, -1 ],
//             [ '10 rows', '25 rows', '50 rows', 'Show all' ]
//         ],
//         buttons: [
//             'pageLength'
//         ]
//     } );
// } );