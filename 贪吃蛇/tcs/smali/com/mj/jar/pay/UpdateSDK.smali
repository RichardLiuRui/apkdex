.class public Lcom/mj/jar/pay/UpdateSDK;
.super Landroid/os/AsyncTask;
.source "UpdateSDK.java"


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


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateSDK"


# instance fields
.field private gContext:Landroid/content/Context;

.field private gHandler:Landroid/os/Handler;

.field private gfilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mHandler"    # Landroid/os/Handler;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mj/jar/pay/UpdateSDK;->gContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/mj/jar/pay/UpdateSDK;->gHandler:Landroid/os/Handler;

    .line 31
    iput-object p3, p0, Lcom/mj/jar/pay/UpdateSDK;->gfilePath:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static copyfile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/io/File;

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 116
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 117
    .local v3, "inputStream":Ljava/io/InputStream;
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v1, "base64Code":Ljava/lang/String;
    :try_start_1
    const-string v5, "config.info"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 122
    invoke-static {v3}, Lcom/mj/jar/pay/UpdateSDK;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :goto_0
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 135
    .local v2, "buffer":[B
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 136
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 137
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "base64Code":Ljava/lang/String;
    .end local v2    # "buffer":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v5

    goto :goto_1

    .line 126
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "base64Code":Ljava/lang/String;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static fileEncode([BLjava/io/File;)V
    .locals 3
    .param p0, "filebuf"    # [B
    .param p1, "toFile"    # Ljava/io/File;

    .prologue
    .line 156
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "buffer":Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 159
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    new-array v1, v3, [B

    .line 145
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 146
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    .line 150
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 147
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mj/jar/pay/UpdateSDK;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 36
    const/4 v5, 0x0

    .line 37
    .local v5, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 38
    .local v8, "reader":Ljava/io/BufferedReader;
    const v0, 0x1337b42

    .line 59
    .local v0, "Version":I
    const/4 v6, 0x0

    .line 62
    .local v6, "isf":Ljava/io/InputStream;
    const v11, 0x1337b42

    :try_start_0
    invoke-virtual {p0, v11}, Lcom/mj/jar/pay/UpdateSDK;->getCurrVersion(I)I

    move-result v11

    if-le v0, v11, :cond_7

    .line 63
    sget-boolean v11, Lcom/mj/jar/pay/MjPaySDK;->debug_flag:Z

    if-eqz v11, :cond_0

    .line 64
    const-string v11, "UpdateSDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "New Version:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    new-instance v10, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://www.GAOANDROID.COM/zj/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 67
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 68
    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mj/jar/pay/UpdateSDK;->gfilePath:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "dataFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    iget-object v11, p0, Lcom/mj/jar/pay/UpdateSDK;->gfilePath:Ljava/lang/String;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v7, "overFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 72
    :cond_1
    const/16 v11, 0x1f58

    new-array v1, v11, [B

    .line 73
    .local v1, "buf":[B
    const/4 v9, 0x0

    .line 74
    .local v9, "size":I
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 75
    .local v4, "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_6

    .line 81
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 82
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 83
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 84
    :cond_3
    invoke-virtual {v2, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 85
    invoke-virtual {p0, v0}, Lcom/mj/jar/pay/UpdateSDK;->setCurrVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v1    # "buf":[B
    .end local v2    # "dataFile":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "overFile":Ljava/io/File;
    .end local v9    # "size":I
    .end local v10    # "url":Ljava/net/URL;
    :cond_4
    :goto_1
    if-eqz v6, :cond_5

    .line 97
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 104
    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/mj/jar/pay/UpdateSDK;->gHandler:Landroid/os/Handler;

    const/16 v12, -0x64

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    const/4 v11, 0x0

    return-object v11

    .line 76
    .restart local v1    # "buf":[B
    .restart local v2    # "dataFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "overFile":Ljava/io/File;
    .restart local v9    # "size":I
    .restart local v10    # "url":Ljava/net/URL;
    :cond_6
    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v4, v1, v11, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 77
    sget-boolean v11, Lcom/mj/jar/pay/MjPaySDK;->debug_flag:Z

    if-eqz v11, :cond_2

    .line 78
    const-string v11, "UpdateSDK"

    const-string v12, "----------down----------"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 92
    .end local v1    # "buf":[B
    .end local v2    # "dataFile":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "overFile":Ljava/io/File;
    .end local v9    # "size":I
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    if-eqz v6, :cond_5

    .line 97
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 98
    :catch_1
    move-exception v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 88
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_5
    sget-boolean v11, Lcom/mj/jar/pay/MjPaySDK;->debug_flag:Z

    if-eqz v11, :cond_4

    .line 89
    const-string v11, "UpdateSDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "NO NEED UPDATE:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v11

    .line 95
    if-eqz v6, :cond_8

    .line 97
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 102
    :cond_8
    :goto_3
    throw v11

    .line 98
    :catch_2
    move-exception v3

    .line 99
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 99
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getCurrVersion(I)I
    .locals 3
    .param p1, "valueversion"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mj/jar/pay/UpdateSDK;->gContext:Landroid/content/Context;

    const-string v1, "mjpay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CurrVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setCurrVersion(I)V
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mj/jar/pay/UpdateSDK;->gContext:Landroid/content/Context;

    const-string v1, "mjpay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method
