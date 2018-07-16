.class public Lcom/qpsoft/tasks/ObjectPrep;
.super Ljava/lang/Object;
.source "ObjectPrep.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFileStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 97
    const/16 v3, 0x7d0

    new-array v2, v3, [B

    .line 98
    .local v2, "tempbytes":[B
    const/4 v0, 0x0

    .line 101
    .local v0, "byteread":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 104
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 105
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 106
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 110
    :goto_1
    return-void

    .line 102
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static copyFileStreamAndDecode(Ljava/io/InputStream;Ljava/io/OutputStream;BB)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "dymKey1"    # B
    .param p3, "dymKey2"    # B

    .prologue
    .line 114
    const/16 v3, 0x7d0

    new-array v2, v3, [B

    .line 115
    .local v2, "tempbytes":[B
    const/4 v0, 0x0

    .line 118
    .local v0, "byteread":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 122
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 123
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 124
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 128
    :goto_1
    return-void

    .line 119
    :cond_0
    invoke-static {v2, v0, p2, p3}, Lcom/qpsoft/tasks/ObjectPrep;->decodeBytes([BIBB)V

    .line 120
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static decodeBytes([BIBB)V
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "len"    # I
    .param p2, "dymKey1"    # B
    .param p3, "dymKey2"    # B

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 138
    :cond_0
    return-void

    .line 133
    :cond_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 136
    aget-byte v1, p0, v0

    xor-int/2addr v1, p3

    xor-int/2addr v1, p2

    xor-int/lit16 v1, v1, 0x8e

    xor-int/lit8 v1, v1, 0x5b

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static init(Landroid/content/Context;Ldalvik/system/DexClassLoader;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dLoader"    # Ldalvik/system/DexClassLoader;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "q"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "p."

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "t."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "W"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ke"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "className2":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "classInf":Ljava/lang/Class;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "r"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "u"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 76
    .local v2, "methodRun":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public static loadCode(Landroid/content/Context;)Ldalvik/system/DexClassLoader;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "apkFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 22
    .local v4, "dexFile_release":Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "p"

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 23
    .local v9, "odex":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "p"

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "b"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    .line 24
    .local v8, "libs":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 25
    .local v10, "odexPath":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 26
    .local v7, "libPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/p"

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "6.apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "apkFileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .end local v0    # "apkFile":Ljava/io/File;
    .local v1, "apkFile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/p"

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "6.dex"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .end local v4    # "dexFile_release":Ljava/io/File;
    .local v5, "dexFile_release":Ljava/io/File;
    :try_start_2
    invoke-static {p0, v1}, Lcom/qpsoft/tasks/ObjectPrep;->releaseFiles(Landroid/content/Context;Ljava/io/File;)V

    .line 52
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 52
    invoke-direct {v3, v2, v10, v7, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 54
    .local v3, "dLoader":Ldalvik/system/DexClassLoader;
    invoke-static {p0, v3}, Lcom/qpsoft/tasks/ObjectPrep;->init(Landroid/content/Context;Ldalvik/system/DexClassLoader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 61
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 64
    :cond_0
    if-eqz v5, :cond_1

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    move-object v4, v5

    .end local v5    # "dexFile_release":Ljava/io/File;
    .restart local v4    # "dexFile_release":Ljava/io/File;
    move-object v0, v1

    .line 68
    .end local v1    # "apkFile":Ljava/io/File;
    .end local v2    # "apkFileName":Ljava/lang/String;
    .end local v3    # "dLoader":Ldalvik/system/DexClassLoader;
    .end local v7    # "libPath":Ljava/lang/String;
    .end local v8    # "libs":Ljava/io/File;
    .end local v9    # "odex":Ljava/io/File;
    .end local v10    # "odexPath":Ljava/lang/String;
    .restart local v0    # "apkFile":Ljava/io/File;
    :goto_0
    return-object v3

    .line 57
    :catch_0
    move-exception v6

    .line 59
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 64
    :cond_2
    if-eqz v4, :cond_3

    .line 65
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 68
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 60
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 61
    :goto_2
    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 64
    :cond_4
    if-eqz v4, :cond_5

    .line 65
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 67
    :cond_5
    throw v11

    .line 60
    .end local v0    # "apkFile":Ljava/io/File;
    .restart local v1    # "apkFile":Ljava/io/File;
    .restart local v2    # "apkFileName":Ljava/lang/String;
    .restart local v7    # "libPath":Ljava/lang/String;
    .restart local v8    # "libs":Ljava/io/File;
    .restart local v9    # "odex":Ljava/io/File;
    .restart local v10    # "odexPath":Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v0, v1

    .end local v1    # "apkFile":Ljava/io/File;
    .restart local v0    # "apkFile":Ljava/io/File;
    goto :goto_2

    .end local v0    # "apkFile":Ljava/io/File;
    .end local v4    # "dexFile_release":Ljava/io/File;
    .restart local v1    # "apkFile":Ljava/io/File;
    .restart local v5    # "dexFile_release":Ljava/io/File;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5    # "dexFile_release":Ljava/io/File;
    .restart local v4    # "dexFile_release":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "apkFile":Ljava/io/File;
    .restart local v0    # "apkFile":Ljava/io/File;
    goto :goto_2

    .line 57
    .end local v0    # "apkFile":Ljava/io/File;
    .restart local v1    # "apkFile":Ljava/io/File;
    :catch_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "apkFile":Ljava/io/File;
    .restart local v0    # "apkFile":Ljava/io/File;
    goto :goto_1

    .end local v0    # "apkFile":Ljava/io/File;
    .end local v4    # "dexFile_release":Ljava/io/File;
    .restart local v1    # "apkFile":Ljava/io/File;
    .restart local v5    # "dexFile_release":Ljava/io/File;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "dexFile_release":Ljava/io/File;
    .restart local v4    # "dexFile_release":Ljava/io/File;
    move-object v0, v1

    .end local v1    # "apkFile":Ljava/io/File;
    .restart local v0    # "apkFile":Ljava/io/File;
    goto :goto_1
.end method

.method private static releaseFiles(Landroid/content/Context;Ljava/io/File;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 81
    .local v0, "asset":Landroid/content/res/AssetManager;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "qp"

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "ws"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dn. "

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "o"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "assetFileName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 83
    .local v3, "streamAssets":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 84
    .local v4, "streamTarget":Ljava/io/OutputStream;
    const/4 v5, 0x3

    new-array v2, v5, [B

    .line 85
    .local v2, "header":[B
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    .line 86
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    const/16 v6, -0x58

    if-eq v5, v6, :cond_0

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 88
    invoke-static {v3, v4}, Lcom/qpsoft/tasks/ObjectPrep;->copyFileStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v5, 0x1

    aget-byte v5, v2, v5

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    invoke-static {v3, v4, v5, v6}, Lcom/qpsoft/tasks/ObjectPrep;->copyFileStreamAndDecode(Ljava/io/InputStream;Ljava/io/OutputStream;BB)V

    goto :goto_0
.end method
