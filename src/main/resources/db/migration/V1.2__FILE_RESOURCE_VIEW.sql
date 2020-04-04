create or replace view file_resource_view as
select f.id,
       f.ordered,
       f.created_date,
       f.stored_name,
       f.uploaded_name,
       f.client_id,
       f.file_resource_type,
       f.file_resource_path,
       f.file_resource_size,
       f.extension,
       f.delimiter,
       (f.stored_name || f.delimiter || f.extension)                                as stored_full_name,
       (f.uploaded_name || f.delimiter || f.extension)                              as uploaded_full_name,
       (f.file_resource_path || '/' || f.stored_name || f.delimiter || f.extension) as absolute_file
from file_resource f;
