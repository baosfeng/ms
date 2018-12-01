-- auto-generated definition
create table `order`
(
  id                        int auto_increment comment '主键'
    primary key,
  product_id                int                   null comment '秒杀商品id',
  pay_account               int                   null comment '支付金额',
  user_id                   int                   null comment '用户id',
  shoper_id                 int                   null comment '商家id',
  create_time               datetime              null comment '创建时间',
  pay_time                  datetime              null comment '支付时间',
  pay_status                smallint(6) default 0 null comment '支付状态',
  user_address              varchar(100)          null comment '收货人地址',
  user_phone                int                   null comment '收货人电话',
  consignee                 varchar(20)           null comment '收货人',
  transaction_serial_number mediumtext            not null comment '交易流水号'
)
  comment '订单';

-- auto-generated definition
create table product
(
  id             int auto_increment comment '主键'
    primary key,
  product_id     int                   not null comment '商品id',
  title          varchar(255)          not null comment '标题',
  product_image  varchar(100)          not null comment '商品图片',
  old_price      int                   null comment '原价格',
  ms_price       int                   null comment '秒杀价格',
  shoper_id      int                   null comment '商家id',
  apply_date     datetime              null comment '添加日期',
  check_date     datetime              null comment '审核日期',
  check_status   smallint(6) default 0 null comment '审核状态',
  start_time     datetime              null comment '开始时间',
  end_time       datetime              null comment '结束时间',
  ms_product_num int                   null comment '秒杀商品数量',
  stock_num      int                   null comment '库存数量',
  description    varchar(1000)         null comment '描述'
);

-- auto-generated definition
create table product_detail
(
  id           int auto_increment comment '主键'
    primary key,
  product_id   int          null comment '商品id',
  shoper_id    int          null comment '商家id',
  origin_place varchar(100) null comment '商品产地',
  name         varchar(100) null comment '商品名称',
  brand        varchar(50)  null comment '品牌',
  weight       int          null comment '重量',
  size_package varchar(200) null comment '规格和包装',
  detail_image varchar(200) null comment '商品详情图片地址'
)
  comment '秒杀商品详情';

-- auto-generated definition
create table shoper
(
  id             int auto_increment comment '主键'
    primary key,
  name           varchar(20)  null comment '姓名',
  shop_name      varchar(100) null comment '店铺名称',
  shop_account   varchar(100) null comment '账号',
  password       varchar(40)  null comment '密码',
  business_scope varchar(100) null comment '经营范围',
  constraint shoper_shop_account_uindex
    unique (shop_account)
)
  comment '商家';

-- auto-generated definition
create table user
(
  id        int auto_increment comment '主键'
    primary key,
  name      varchar(20)           null comment '姓名',
  user_name varchar(100)          null comment '账号',
  password  varchar(40)           null comment '密码',
  sex       smallint(6) default 0 null comment '性别',
  age       int                   null comment '年龄',
  address   varchar(100)          null comment '地址',
  email     varchar(50)           null comment '邮箱',
  constraint user_user_name_uindex
    unique (user_name)
)
  comment '用户表';

