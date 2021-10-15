       <!--script para cargar la miniatura de la imagen -->
       <input id="files" type="file" name="userfileEdit"/>
       <!--tener cuidado con el nombre del id list-miniaturaEdit es diferente a list-miniatura
       y  list-datosEdit es diferente a list-datos-->
        <output id="list-miniaturaEdit"></output>
        <output id="list-datosEdit"></output>

 <script>
        // funcion para manejar selección de archivo------------------------------------------------------------------------------
        function handleFileSelect(evt){
            evt.stopPropagation();
            evt.preventDefault();
            var files =  evt.dataTransfer.files;// Objeto de lista de archivos.
            // archivos es una lista de archivos de objetos de archivo. Enumera algunas propiedades.
            var output = [];
            for(var i = 0, f; f= files[i]; i++){
                var reader = new FileReader();
                // Cierre para capturar la información del archivo.
                reader.onload = (function (theFile){
                    return function (e){
                        // Renderizar miniatura.
                        var span = document.createElement('span');
                        span.innerHTML = ['Nombre: ', escape(theFile.name), ' || Tamanio: ', escape(theFile.size), ' bytes || type: ', escape(theFile.type), '<br /><img class="thumb" src="', e.target.result, '" title="', escape(theFile.name), '"style="width:50%;"/><br />'].join('');
                        document.getElementById('List-miniaturaEdit').insertBefore(span,null);
                    };
                }) (f);
                // Leer en el archivo de imagen como una URL de datos.
                reader.readAsDataURL(f);
            }
            document.getElementById('list-datosEdit').innerHTML = '<ul>' + output.join('')+ '<ul>';
        }
        // funcion manejar Arrastrar sobre----------------------------------------------------------------------------------------------
        function handleDragOver(evt){
            evt.stopPropagation();
            evt.preventDefault();
            evt.dataTransfer.dropEffect = 'copy'; // Muestre explícitamente que esto es una copia.
            // Configurar las oyentes dnd.
            var dropZone = document.getElementById('drop_zone');
            dropZone.addEventListener('dragover', handleDragOver, false);
            dropZone.addEventListener('drop', handleFileSelect, false);
        }
    </script>
    <script>
        // funcion para manejar selección de archivo------------------------------------------------------------------------------------
        function handleFileSelect(evt){
            var files = evt.target.files; // Objeto de lista de archivos
            // Recorre la Lista de archivos y renderiza los archivos de imagen como miniaturas.
            for(var i = 0, f; f= files[i]; i++){                
                // Procesar solo archivos de imagen.
                if(!f.type.match('image*')){
                    continue;
                }
                var reader = new FileReader();
                // Cierre para capturar la información del archivo.
                reader.onload=(function (theFile){
                    return function(e) {     
                // Renderizar miniatura.
                var span = document.createElement('span');
                span.innerHTML = ['<br /><img class="thumb" src="', e.target.result, '" title="', escape(theFile.name), '" style="width:50%;"/><br />'].join('');
                    document.getElementById('list-miniaturaEdit').insertBefore(span, null);
                    };  
                })(f);
                //Leer en el archivo de imagen como una URL de datos.
                reader.readAsDataURL(f);
            }
        }
        document.getElementById('files').addEventListener('change', handleFileSelect, false);
    </script>