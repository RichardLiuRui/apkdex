.class public Lcom/zy/hez/c/k;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method public static a(Landroid/content/Context;Ljava/io/File;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    sget-object v2, Lcom/zy/hez/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v4, v0, [B

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v0, -0x1

    if-eq v5, v0, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    aget-byte v6, v4, v0

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected a([Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zy/hez/c/k;->b:Ljava/lang/String;

    sget-object v1, Lcom/zy/hez/a/a;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zy/hez/c/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/zy/hez/net/c;

    iget-object v4, p0, Lcom/zy/hez/c/k;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/zy/hez/c/k;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/zy/hez/c/k;->d:Ljava/lang/String;

    invoke-direct {v1, v4, v0, v5, v6}, Lcom/zy/hez/net/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zy/hez/net/c;->connToAccess()Lcom/zy/hez/model/RespParam;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zy/hez/model/RespParam;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zy/hez/c/j;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/zy/hez/model/RespParam;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zy/hez/c/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "data"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/zy/hez/c/k;->b:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    const/16 v0, 0x400

    new-array v6, v0, [B

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_3

    move v0, v3

    :goto_1
    if-ge v0, v8, :cond_1

    aget-byte v9, v6, v0

    add-int/lit8 v9, v9, -0x1

    int-to-byte v9, v9

    aput-byte v9, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v7, v6, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    return-object v2

    :cond_3
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_4
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/zy/hez/c/k;->a:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zy/hez/c/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
