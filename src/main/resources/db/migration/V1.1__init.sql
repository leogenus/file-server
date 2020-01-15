CREATE SEQUENCE FILE_RESOURCE_SEQ INCREMENT BY 1;
CREATE TABLE FILE_RESOURCE
(
    ID                    VARCHAR2(255) DEFAULT ('FILE_RESOURCE_SEQ-' || FILE_RESOURCE_SEQ.NEXTVAL) NOT NULL,
    ORDERED               NUMBER        DEFAULT FILE_RESOURCE_SEQ.CURRVAL                           NOT NULL,
    CREATED_DATE          DATE          DEFAULT SYSDATE                                             NOT NULL,
    STORED_NAME           VARCHAR2(512)                                                             NOT NULL,
    UPLOADED_NAME         VARCHAR2(512)                                                             NOT NULL,
    CLIENT_ID             VARCHAR2(100)                                                             NOT NULL,
    FILE_RESOURCE_TYPE    VARCHAR2(255)                                                             NOT NULL,
    FILE_RESOURCE_PATH    VARCHAR2(2048)                                                            NOT NULL,
    FILE_RESOURCE_SIZE    NUMBER                                                                    NOT NULL,
    EXTENSION             VARCHAR2(10)                                                              NOT NULL,
    DELIMITER             CHAR(1)       DEFAULT '.'                                                 NOT NULL,
    FILE_RESOURCE_VERSION NUMBER        DEFAULT 1                                                   NOT NULL,
    CONSTRAINT FILE_RESOURCE_PK PRIMARY KEY (ID)
);