.class public Lcom/zxhykj/xinzf/beans/DownBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private key:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/beans/DownBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/beans/DownBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/beans/DownBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zxhykj/xinzf/beans/DownBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/beans/DownBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/beans/DownBean;->md5:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/beans/DownBean;->url:Ljava/lang/String;

    return-void
.end method
