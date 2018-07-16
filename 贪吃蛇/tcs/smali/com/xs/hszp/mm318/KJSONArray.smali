.class public Lcom/xs/hszp/mm318/KJSONArray;
.super Lorg/json/JSONArray;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static createJsonArray()Lcom/xs/hszp/mm318/KJSONArray;
    .locals 1

    new-instance v0, Lcom/xs/hszp/mm318/KJSONArray;

    invoke-direct {v0}, Lcom/xs/hszp/mm318/KJSONArray;-><init>()V

    return-object v0
.end method

.method public static createJsonArray(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONArray;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/xs/hszp/mm318/KJSONArray;

    invoke-direct {v0, p0}, Lcom/xs/hszp/mm318/KJSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
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

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBoolean(I)Z
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(IZ)Z
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDouble(ID)D
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInt(II)I
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getJSONArray(I)Lorg/json/JSONArray;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
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

.method public getJSONArray(ILorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getJSONObject(I)Lcom/xs/hszp/mm318/KJSONObject;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xs/hszp/mm318/KJSONObject;->createJsonObject(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONObject;
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

.method public getJSONObject(ILcom/xs/hszp/mm318/KJSONObject;)Lcom/xs/hszp/mm318/KJSONObject;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xs/hszp/mm318/KJSONObject;->createJsonObject(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic getJSONObject(I)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xs/hszp/mm318/KJSONArray;->getJSONObject(I)Lcom/xs/hszp/mm318/KJSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getLong(I)J
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLong(IJ)J
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
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

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Lcom/xs/hszp/mm318/KJSONArray;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/KJSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(ID)Lorg/json/JSONArray;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/KJSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(II)Lorg/json/JSONArray;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/KJSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(IJ)Lorg/json/JSONArray;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/KJSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic put(ILjava/lang/Object;)Lorg/json/JSONArray;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/xs/hszp/mm318/KJSONArray;->put(ILjava/lang/Object;)Lcom/xs/hszp/mm318/KJSONArray;

    move-result-object v0

    return-object v0
.end method

.method public put(IZ)Lorg/json/JSONArray;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONArray;->put(IZ)Lorg/json/JSONArray;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/KJSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
