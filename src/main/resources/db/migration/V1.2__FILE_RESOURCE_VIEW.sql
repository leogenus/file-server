create force view FILE_RESOURCE_VIEW
AS
SELECT f.ID,
       f.ORDERED,
       f.CREATED_DATE,
       f.STORED_NAME,
       f.UPLOADED_NAME,
       f.CLIENT_ID,
       f.FILE_RESOURCE_TYPE,
       f.FILE_RESOURCE_PATH,
       f.FILE_RESOURCE_SIZE,
       f.EXTENSION,
       f.DELIMITER,
       (f.STORED_NAME || f.DELIMITER || f.EXTENSION)                                as STORED_FULL_NAME,
       (f.UPLOADED_NAME || f.DELIMITER || f.EXTENSION)                              as UPLOADED_FULL_NAME,
       (f.FILE_RESOURCE_PATH || '/' || f.STORED_NAME || f.DELIMITER || f.EXTENSION) as ABSOLUTE_FILE
FROM FILE_RESOURCE f;