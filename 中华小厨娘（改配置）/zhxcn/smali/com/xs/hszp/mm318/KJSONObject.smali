.class public Lcom/xs/hszp/mm318/KJSONObject;
.super Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static createJsonObject()Lcom/xs/hszp/mm318/KJSONObject;
    .locals 1

    new-instance v0, Lcom/xs/hszp/mm318/KJSONObject;

    invoke-direct {v0}, Lcom/xs/hszp/mm318/KJSONObject;-><init>()V

    return-object v0
.end method

.method public static createJsonObject(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONObject;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/xs/hszp/mm318/KJSONObject;

    invoke-direct {v0, p0}, Lcom/xs/hszp/mm318/KJSONObject;-><init>(Ljava/lang/String;)V
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
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
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

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
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

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
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

.method public getDouble(Ljava/lang/String;D)D
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
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

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONArray;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xs/hszp/mm318/KJSONArray;->createJsonArray(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONArray;
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

.method public getJSONArray(Ljava/lang/String;Lcom/xs/hszp/mm318/KJSONArray;)Lcom/xs/hszp/mm318/KJSONArray;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xs/hszp/mm318/KJSONArray;->createJsonArray(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xs/hszp/mm318/KJSONObject;->getJSONArray(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONObject;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/xs/hszp/mm318/KJSONObject;

    invoke-super {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xs/hszp/mm318/KJSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;Lcom/xs/hszp/mm318/KJSONObject;)Lcom/xs/hszp/mm318/KJSONObject;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/xs/hszp/mm318/KJSONObject;

    invoke-super {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xs/hszp/mm318/KJSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xs/hszp/mm318/KJSONObject;->getJSONObject(Ljava/lang/String;)Lcom/xs/hszp/mm318/KJSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
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

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
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

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;D)Lcom/xs/hszp/mm318/KJSONObject;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/KJSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;I)Lcom/xs/hszp/mm318/KJSONObject;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/KJSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;J)Lcom/xs/hszp/mm318/KJSONObject;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/KJSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/xs/hszp/mm318/KJSONObject;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/KJSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Z)Lcom/xs/hszp/mm318/KJSONObject;
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    check-cast v0, Lcom/xs/hszp/mm318/KJSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/String;D)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/xs/hszp/mm318/KJSONObject;->put(Ljava/lang/String;D)Lcom/xs/hszp/mm318/KJSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/xs/hszp/mm318/KJSONObject;->put(Ljava/lang/String;I)Lcom/xs/hszp/mm318/KJSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/xs/hszp/mm318/KJSONObject;->put(Ljava/lang/String;J)Lcom/xs/hszp/mm318/KJSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/xs/hszp/mm318/KJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/xs/hszp/mm318/KJSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/xs/hszp/mm318/KJSONObject;->put(Ljava/lang/String;Z)Lcom/xs/hszp/mm318/KJSONObject;

    move-result-object v0

    return-object v0
.end method
