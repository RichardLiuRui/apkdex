.class public abstract Lcom/zy/hez/net/AbstractReq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zy/hez/net/b;


# static fields
.field private static final CUSTOM_FIELD_TYPE:[Ljava/lang/String;

.field private static final DOMAIN_BYTE:[B

.field private static final REQ_DOMAIN:Ljava/lang/String;


# instance fields
.field protected reqParam:Lcom/zy/hez/model/ReqParam;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zy/hez/net/AbstractReq;->DOMAIN_BYTE:[B

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/zy/hez/net/AbstractReq;->DOMAIN_BYTE:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zy/hez/net/AbstractReq;->REQ_DOMAIN:Ljava/lang/String;

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

    sput-object v0, Lcom/zy/hez/net/AbstractReq;->CUSTOM_FIELD_TYPE:[Ljava/lang/String;

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
        0x6at
        0x69t
        0x65t
        0x70t
        0x61t
        0x79t
        0x2et
        0x6at
        0x69t
        0x65t
        0x6dt
        0x65t
        0x6et
        0x67t
        0x6bt
        0x6at
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x3at
        0x38t
        0x31t
        0x35t
        0x32t
        0x2ft
        0x72t
        0x79t
        0x66t
        0x5ft
        0x77t
        0x65t
        0x62t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x2ft
        0x70t
        0x61t
        0x79t
        0x6dt
        0x65t
        0x6et
        0x74t
    .end array-data
.end method

.method public constructor <init>(Lcom/zy/hez/model/ReqParam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zy/hez/net/AbstractReq;->reqParam:Lcom/zy/hez/model/ReqParam;

    return-void
.end method

.method private getCollFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lcom/zy/hez/net/AbstractReq;->getFieldGenericClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/zy/hez/net/AbstractReq;->jsonToArray(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptContent()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zy/hez/net/AbstractReq;->paramToJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/hez/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-direct {p0, p1}, Lcom/zy/hez/net/AbstractReq;->isEntityField(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    check-cast p2, Lorg/json/JSONObject;

    invoke-direct {p0, v0, p2}, Lcom/zy/hez/net/AbstractReq;->jsonToBean(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-direct {p0, p1}, Lcom/zy/hez/net/AbstractReq;->isCollField(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/zy/hez/net/AbstractReq;->getCollFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method private getHttpReq()Lcom/zy/hez/b/g;
    .locals 3

    new-instance v0, Lcom/zy/hez/b/c;

    invoke-direct {v0}, Lcom/zy/hez/b/c;-><init>()V

    invoke-virtual {p0}, Lcom/zy/hez/net/AbstractReq;->b()Lcom/zy/hez/b/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zy/hez/b/g;->a(Lcom/zy/hez/b/d;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zy/hez/net/AbstractReq;->REQ_DOMAIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zy/hez/net/AbstractReq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zy/hez/b/g;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zy/hez/net/AbstractReq;->b()Lcom/zy/hez/b/d;

    move-result-object v1

    sget-object v2, Lcom/zy/hez/b/d;->b:Lcom/zy/hez/b/d;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/zy/hez/net/AbstractReq;->getEncryptContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zy/hez/b/g;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/zy/hez/net/a;->a:Lcom/zy/hez/net/a;

    iget-object v1, v1, Lcom/zy/hez/net/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/zy/hez/b/g;->b(Ljava/lang/String;)V

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

    sget-object v0, Lcom/zy/hez/net/AbstractReq;->CUSTOM_FIELD_TYPE:[Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lcom/zy/hez/net/AbstractReq;->isCustomField(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private isEntityField(Ljava/lang/reflect/Field;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/zy/hez/net/AbstractReq;->isCustomField(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zy/hez/net/AbstractReq;->isCollField(Ljava/lang/reflect/Field;)Z

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

    invoke-direct {p0, p1}, Lcom/zy/hez/net/AbstractReq;->isCustomField(Ljava/lang/Class;)Z

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

    invoke-direct {p0, p1, v2}, Lcom/zy/hez/net/AbstractReq;->jsonToBean(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

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
    invoke-static {p2}, Lcom/zy/hez/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/zy/hez/net/AbstractReq;->jsonToBean(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;
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

    invoke-direct {p0, v4, v5}, Lcom/zy/hez/net/AbstractReq;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public connToAccess()Lcom/zy/hez/model/RespParam;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/zy/hez/net/AbstractReq;->getHttpReq()Lcom/zy/hez/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/zy/hez/b/i;->a(Lcom/zy/hez/b/g;)Lcom/zy/hez/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/zy/hez/b/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/zy/hez/b/h;->c()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/zy/hez/model/RespParam;

    invoke-direct {p0, v1, v0}, Lcom/zy/hez/net/AbstractReq;->jsonToBean(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zy/hez/model/RespParam;
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

.method public paramToJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appCode"

    iget-object v2, p0, Lcom/zy/hez/net/AbstractReq;->reqParam:Lcom/zy/hez/model/ReqParam;

    invoke-virtual {v2}, Lcom/zy/hez/model/ReqParam;->getAppCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packCode"

    iget-object v2, p0, Lcom/zy/hez/net/AbstractReq;->reqParam:Lcom/zy/hez/model/ReqParam;

    invoke-virtual {v2}, Lcom/zy/hez/model/ReqParam;->getPackCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/zy/hez/net/AbstractReq;->reqParam:Lcom/zy/hez/model/ReqParam;

    invoke-virtual {v2}, Lcom/zy/hez/model/ReqParam;->getSdkVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sysVersion"

    iget-object v2, p0, Lcom/zy/hez/net/AbstractReq;->reqParam:Lcom/zy/hez/model/ReqParam;

    invoke-virtual {v2}, Lcom/zy/hez/model/ReqParam;->getSysVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
