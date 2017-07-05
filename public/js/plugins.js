function constructorSelect(){
    $('.selectBoot').selectpicker({
		style: 'btn-white'
    });
}

function constructorTabla(){
    $('.dataTable').DataTable({
        responsive: true,
        "pageLength": 20,
        "language": tabla_traducida, // esta variable esta instanciada donde están declarados todos los js.

    });
    /**Para Tabla Compras**/
    var tabla_compras = $('#tabla_compras').DataTable({
        responsive: true,
        "pageLength": 20,
        "language": tabla_traducida, // esta variable esta instanciada donde están declarados todos los js.
    });
//Datatables - filtro individuales - instanciación de los filtros
    $('#tabla_compras tfoot th').each(function () {
        var title = $(this).text();
        if ((title !== '#')&&( title !== 'Ver')&&( title !== 'N° Compra')) { //ignoramos la columna de los botones
            $(this).html('<input type="text" placeholder="Buscar ' + title + '" />');
        }
    });
    //Datatables - filtro individuales - búsqueda
    tabla_compras.columns().every(function () {
        var that = this;
        $('input', this.footer()).on('keyup change', function () {
            if (that.search() !== this.value) {
                that.search(this.value).draw();
            }
        });
    });
    /** *******************/
    /**Para Tabla CLIENTES**/
    var tabla_clientes = $('#tabla_clientes').DataTable({
        responsive: true,
        "pageLength": 20,
        "language": tabla_traducida, // esta variable esta instanciada donde están declarados todos los js.
    });
//Datatables - filtro individuales - instanciación de los filtros
    $('#tabla_clientes tfoot th').each(function () {
        var title = $(this).text();
        if ((title !== 'Ver / editar')&&( title !== 'Ver')&&( title !== 'N° Compra')) { //ignoramos la columna de los botones
            $(this).html('<input type="text" placeholder="Buscar ' + title + '" />');
        }
    });
    //Datatables - filtro individuales - búsqueda
    tabla_clientes.columns().every(function () {
        var that = this;
        $('input', this.footer()).on('keyup change', function () {
            if (that.search() !== this.value) {
                that.search(this.value).draw();
            }
        });
    });

    /** *******************/
    /**Para Tabla MOVIMIENTOS CAJA **/
    var tabla_mov = $('#tab-movimientos').DataTable({
        responsive: true,
        "pageLength": 20,
        "language": tabla_traducida, // esta variable esta instanciada donde están declarados todos los js.
    });
//Datatables - filtro individuales - instanciación de los filtros
    $('#tab-movimientos tfoot th').each(function () {
        var title = $(this).text();
        if ((title !== 'Ver / editar')&&( title !== 'Ver')&&( title !== 'N° Compra')) { //ignoramos la columna de los botones
            $(this).html('<input type="text" placeholder="Buscar ' + title + '" />');
        }
    });
    //Datatables - filtro individuales - búsqueda
    tabla_mov.columns().every(function () {
        var that = this;
        $('input', this.footer()).on('keyup change', function () {
            if (that.search() !== this.value) {
                that.search(this.value).draw();
            }
        });
    });


    /* Custom filtering function which will search data in column four between two values */
    $.fn.dataTable.ext.search.push(
        function( settings, data, dataIndex ) {
            var min = parseInt( $('#fecha_mov_min').val(), 10 );
            var max = parseInt( $('#fecha_mov_max').val(), 10 );
            var age = parseFloat( data[2] ) || 0; // use data for the age column

            if ( ( isNaN( min ) && isNaN( max ) ) ||
                ( isNaN( min ) && age <= max ) ||
                ( min <= age   && isNaN( max ) ) ||
                ( min <= age   && age <= max ) )
            {
                return true;
            }
            return false;
        }
    );


        // Event listener to the two range filtering inputs to redraw on input
        $('#fecha_mov_min, #fecha_mov_max').keyup( function() {
            tabla_mov.draw();
        } );



}

/** Inicio Tabla Pedidos **/
function constructorTabla_pedidos_pendientes(){
    //Datatable - instaciación del plugin
    var tabla_pp = $('#tabla_p_p').DataTable({
        responsive: true,
        "pageLength": 20,
        "language": tabla_traducida, // esta variable esta instanciada donde están declarados todos los js.
    });

    //Datatables - filtro individuales - instanciación de los filtros
    $('#tabla_p_p tfoot th').each(function () {
        var title = $(this).text();
        if ((title !== '#')&&( title !== 'Ver')&&( title !== 'N°')) { //ignoramos la columna de los botones
            $(this).html('<input type="text" placeholder="Buscar ' + title + '" />');
        }
    });
    //Datatables - filtro individuales - búsqueda
    tabla_pp.columns().every(function () {
        var that = this;
        $('input', this.footer()).on('keyup change', function () {
            if (that.search() !== this.value) {
                that.search(this.value).draw();
            }
        });
    });
    //Datatables - asocio el evento sobre el body de la tabla para que resalte fila y columna
    $('#tabla_p_p tbody').on('mouseenter', 'td', function () {
        var colIdx = tabla_pp.cell(this).index().column;
        $(tabla_pp.cells().nodes()).removeClass('highlight');
        $(tabla_pp.column(colIdx).nodes()).addClass('highlight');
    });

    /** Inicio Tabla Movimientos **/
//Datatable - instaciación del plugin
    var tabla_mov = $('#tab-movimientos').DataTable({
        responsive: true,
        "pageLength": 20,
        "language": tabla_traducida, // esta variable esta instanciada donde están declarados todos los js.
    });

//Datatables - filtro individuales - instanciación de los filtros
    $('#tab-movimientos tfoot th').each(function () {
        var title = $(this).text();
        if ( title !== 'N°') { //ignoramos la columna de los botones
            $(this).html('<input type="text" placeholder="Buscar ' + title + '" />');
        }
    });
//Datatables - filtro individuales - búsqueda
    tabla_mov.columns().every(function () {
        var that = this;
        $('input', this.footer()).on('keyup change', function () {
            if (that.search() !== this.value) {
                that.search(this.value).draw();
            }
        });
    });
}

function constructorTabla_movimientos(){



}