.class public abstract Lcom/zxhykj/xinzf/reqs/BaseImpReqs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zxhykj/xinzf/reqs/b;


# static fields
.field private static final CUSTOM_FIELD_TYPE:[Ljava/lang/String;

.field private static final DOMAIN_BYTE:[B

.field private static final REQ_DOMAIN:Ljava/lang/String;


# instance fields
.field protected reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

.field private wyMd5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->DOMAIN_BYTE:[B

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->DOMAIN_BYTE:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->REQ_DOMAIN:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Integer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Long"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "String"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->CUSTOM_FIELD_TYPE:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x78t
        0x7at
        0x66t
        0x73t
        0x64t
        0x6bt
        0x2et
        0x7at
        0x68t
        0x61t
        0x6et
        0x67t
        0x78t
        0x68t
        0x79t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x3at
        0x31t
        0x30t
        0x30t
        0x31t
        0x31t
        0x2ft
        0x7at
        0x78t
        0x68t
        0x79t
        0x70t
        0x61t
        0x79t
        0x2ft
        0x61t
        0x63t
        0x74t
        0x69t
        0x6ft
        0x6et
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "md5"

    iput-object v0, p0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->wyMd5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zxhykj/xinzf/beans/UpBean;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "md5"

    iput-object v0, p0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->wyMd5:Ljava/lang/String;

    iput-object p1, p0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    return-void
.end method

.method private getCollFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->getFieldGenericClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->jsonToArray(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptContent()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->param2Json()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFieldGenericClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-string v0, "comprise"

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method private getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->isEntityField(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    check-cast p2, Lorg/json/JSONObject;

    invoke-direct {p0, v0, p2}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->jsonToBean(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-direct {p0, p1}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->isCollField(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->getCollFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method private getHttpReq()Lcom/zxhykj/xinzf/b/h;
    .locals 3

    new-instance v0, Lcom/zxhykj/xinzf/b/c;

    invoke-direct {v0}, Lcom/zxhykj/xinzf/b/c;-><init>()V

    invoke-virtual {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->b()Lcom/zxhykj/xinzf/b/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zxhykj/xinzf/b/h;->a(Lcom/zxhykj/xinzf/b/d;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->REQ_DOMAIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zxhykj/xinzf/b/h;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->b()Lcom/zxhykj/xinzf/b/d;

    move-result-object v1

    sget-object v2, Lcom/zxhykj/xinzf/b/d;->b:Lcom/zxhykj/xinzf/b/d;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->getEncryptContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zxhykj/xinzf/b/h;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/zxhykj/xinzf/reqs/a;->a:Lcom/zxhykj/xinzf/reqs/a;

    iget-object v1, v1, Lcom/zxhykj/xinzf/reqs/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/zxhykj/xinzf/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getHttpReq2()Lcom/zxhykj/xinzf/b/h;
    .locals 3

    new-instance v0, Lcom/zxhykj/xinzf/b/c;

    invoke-direct {v0}, Lcom/zxhykj/xinzf/b/c;-><init>()V

    invoke-virtual {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->b()Lcom/zxhykj/xinzf/b/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zxhykj/xinzf/b/h;->a(Lcom/zxhykj/xinzf/b/d;)V

    invoke-virtual {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zxhykj/xinzf/b/h;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->b()Lcom/zxhykj/xinzf/b/d;

    move-result-object v1

    sget-object v2, Lcom/zxhykj/xinzf/b/d;->b:Lcom/zxhykj/xinzf/b/d;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->getEncryptContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zxhykj/xinzf/b/h;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/zxhykj/xinzf/reqs/a;->a:Lcom/zxhykj/xinzf/reqs/a;

    iget-object v1, v1, Lcom/zxhykj/xinzf/reqs/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/zxhykj/xinzf/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private isCollField(Ljava/lang/reflect/Field;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isCustomField(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->CUSTOM_FIELD_TYPE:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCustomField(Ljava/lang/reflect/Field;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->isCustomField(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isEntityField(Ljava/lang/reflect/Field;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->isCustomField(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->isCollField(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jsonToArray(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->isCustomField(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->jsonToBean(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private jsonToBean(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/zxhykj/xinzf/g/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->jsonToBean(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jsonToBean(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4, v5}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private setMD5Key(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->wyMd5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public conn2Ser()Lcom/zxhykj/xinzf/beans/DownBean;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->getHttpReq()Lcom/zxhykj/xinzf/b/h;

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/b/j;->a(Lcom/zxhykj/xinzf/b/h;)Lcom/zxhykj/xinzf/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/zxhykj/xinzf/b/i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/zxhykj/xinzf/b/i;->d()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/zxhykj/xinzf/beans/DownBean;

    invoke-direct {p0, v1, v0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->jsonToBean(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zxhykj/xinzf/beans/DownBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpIs()Ljava/io/InputStream;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->getHttpReq2()Lcom/zxhykj/xinzf/b/h;

    move-result-object v0

    invoke-static {v0}, Lcom/zxhykj/xinzf/b/j;->a(Lcom/zxhykj/xinzf/b/h;)Lcom/zxhykj/xinzf/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/zxhykj/xinzf/b/i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/zxhykj/xinzf/b/i;->c()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public param2Json()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appCode"

    iget-object v2, p0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    invoke-virtual {v2}, Lcom/zxhykj/xinzf/beans/UpBean;->getAppCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packCode"

    iget-object v2, p0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    invoke-virtual {v2}, Lcom/zxhykj/xinzf/beans/UpBean;->getPackCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    invoke-virtual {v2}, Lcom/zxhykj/xinzf/beans/UpBean;->getSdkVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sysVersion"

    iget-object v2, p0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->reqParam:Lcom/zxhykj/xinzf/beans/UpBean;

    invoke-virtual {v2}, Lcom/zxhykj/xinzf/beans/UpBean;->getSysVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->wyMd5:Ljava/lang/String;

    invoke-static {v1}, Lcom/zxhykj/xinzf/reqs/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zxhykj/xinzf/reqs/BaseImpReqs;->setMD5Key(Ljava/lang/String;)V

    goto :goto_0
.end method
