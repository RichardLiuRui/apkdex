.class public Lcom/y/t/jar/pay/UpdateSDK;
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
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private gContext:Landroid/content/Context;

.field private gHandler:Landroid/os/Handler;

.field private gfilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/y/t/jar/pay/UpdateSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/y/t/jar/pay/UpdateSDK;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mHandler"    # Landroid/os/Handler;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/y/t/jar/pay/UpdateSDK;->gContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/y/t/jar/pay/UpdateSDK;->gHandler:Landroid/os/Handler;

    .line 32
    iput-object p3, p0, Lcom/y/t/jar/pay/UpdateSDK;->gfilePath:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static copyfileN(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toFile"    # Ljava/io/File;

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 117
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 118
    .local v3, "inputStream":Ljava/io/InputStream;
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .local v1, "base64Code":Ljava/lang/String;
    :try_start_1
    const-string v5, "yfpay.cf"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 124
    invoke-static {v3}, Lcom/y/t/jar/pay/UpdateSDK;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :goto_0
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 137
    .local v2, "buffer":[B
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 138
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "base64Code":Ljava/lang/String;
    .end local v2    # "buffer":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 140
    :catch_0
    move-exception v5

    goto :goto_1

    .line 128
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "base64Code":Ljava/lang/String;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static copyfileS(Landroid/content/Context;Ljava/io/File;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toFile"    # Ljava/io/File;

    .prologue
    .line 151
    :try_start_0
    const-string v0, "yfpay.cf"

    .line 152
    .local v0, "FileName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/_zx_res/baidu_res/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "Path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "ReadFileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, "yfFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 159
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .local v3, "base64Code":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 162
    .local v5, "inputStream":Ljava/io/FileInputStream;
    invoke-static {v5}, Lcom/y/t/jar/pay/UpdateSDK;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    const/4 v8, 0x0

    :try_start_2
    invoke-static {v3, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 169
    .local v4, "buffer":[B
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 170
    .local v6, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v6, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 171
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 180
    .end local v0    # "FileName":Ljava/lang/String;
    .end local v1    # "Path":Ljava/lang/String;
    .end local v2    # "ReadFileName":Ljava/lang/String;
    .end local v3    # "base64Code":Ljava/lang/String;
    .end local v4    # "buffer":[B
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "yfFile":Ljava/io/File;
    :goto_1
    return-void

    .line 175
    .restart local v0    # "FileName":Ljava/lang/String;
    .restart local v1    # "Path":Ljava/lang/String;
    .restart local v2    # "ReadFileName":Ljava/lang/String;
    .restart local v7    # "yfFile":Ljava/io/File;
    :cond_0
    invoke-static {p0, p1}, Lcom/y/t/jar/pay/UpdateSDK;->copyfileN(Landroid/content/Context;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 178
    .end local v0    # "FileName":Ljava/lang/String;
    .end local v1    # "Path":Ljava/lang/String;
    .end local v2    # "ReadFileName":Ljava/lang/String;
    .end local v7    # "yfFile":Ljava/io/File;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 166
    .restart local v0    # "FileName":Ljava/lang/String;
    .restart local v1    # "Path":Ljava/lang/String;
    .restart local v2    # "ReadFileName":Ljava/lang/String;
    .restart local v3    # "base64Code":Ljava/lang/String;
    .restart local v7    # "yfFile":Ljava/io/File;
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public static fileEncode([BLjava/io/File;)V
    .locals 3
    .param p0, "filebuf"    # [B
    .param p1, "toFile"    # Ljava/io/File;

    .prologue
    .line 196
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "buffer":Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 198
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 199
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 200
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
    .line 183
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    new-array v1, v3, [B

    .line 185
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 186
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    .line 190
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 187
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

    invoke-virtual {p0, p1}, Lcom/y/t/jar/pay/UpdateSDK;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/y/t/jar/pay/UpdateSDK;->gHandler:Landroid/os/Handler;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrVersion(I)I
    .locals 3
    .param p1, "valueversion"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/y/t/jar/pay/UpdateSDK;->gContext:Landroid/content/Context;

    const-string v1, "yfpay"

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
    .line 209
    iget-object v0, p0, Lcom/y/t/jar/pay/UpdateSDK;->gContext:Landroid/content/Context;

    const-string v1, "yfpay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method
