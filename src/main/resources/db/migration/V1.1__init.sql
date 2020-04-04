create sequence file_resource_seq increment by 1;
create table file_resource
(
    id                    varchar(255) default ('file_resource_seq-' || nextval('file_resource_seq')) not null,
    ordered               bigint       default currval('file_resource_seq')                           not null,
    created_date          timestamp    default now()                                                  not null,
    stored_name           varchar(512)                                                                not null,
    uploaded_name         varchar(512)                                                                not null,
    client_id             varchar(100)                                                                not null,
    file_resource_type    varchar(255)                                                                not null,
    file_resource_path    varchar(2048)                                                               not null,
    file_resource_size    bigint                                                                      not null,
    extension             varchar(10)                                                                 not null,
    delimiter             char(1)      default '.'                                                    not null,
    file_resource_version bigint       default 1                                                      not null,
    constraint file_resource_pk primary key (id)
);
