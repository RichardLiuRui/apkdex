.class public Lcom/zp/mm/api/impl/XmlServerConnector;
.super Ljava/lang/Object;
.source "XmlServerConnector.java"

# interfaces
.implements Lcom/zp/mm/api/CodePayHandler;
.implements Lcom/zp/mm/api/ServerConnector;


# static fields
.field private static final DEFAULT_RP_PORT:I = 0x22b8

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final VERSION:I = 0x1


# instance fields
.field private final appStart:Ljava/lang/String;

.field private customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

.field private factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

.field private final gate:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

.field private zipDeviceData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "https?://(\\d+\\.\\d+\\.\\d+\\.\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zp/mm/api/impl/XmlServerConnector;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "gate"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/service/appStart.do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->appStart:Ljava/lang/String;

    .line 76
    sget-object v1, Lcom/zp/mm/api/impl/XmlServerConnector;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 77
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized checkCreateReverseProxyClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryData"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "port"    # Ljava/lang/String;
    .param p5, "zipDeviceData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/zp/mm/api/impl/XmlServerConnector;->checkFactory(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Lcom/zp/rp/client/LocalReverseProxyClientFactory;

    invoke-direct {v2, p1}, Lcom/zp/rp/client/LocalReverseProxyClientFactory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 168
    const/16 v1, 0x22b8

    .line 170
    .local v1, "servicePort":I
    if-eqz p4, :cond_1

    .line 171
    :try_start_1
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 174
    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    iget-object v3, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;

    invoke-interface {v2, v3, v1, p3}, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;->createClient(Ljava/lang/String;ILjava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v2

    iput-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    .line 175
    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v2, p5}, Lzp/cn/banny/rp/client/ReverseProxyClient;->initialize([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .end local v1    # "servicePort":I
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/zp/mm/api/impl/XmlServerConnector;->createDefaultClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 160
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 173
    .restart local v1    # "servicePort":I
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private checkFactory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryData"    # Ljava/lang/String;

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-nez v12, :cond_0

    if-eqz p1, :cond_0

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xe

    if-lt v12, v13, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v9, 0x0

    .line 214
    .local v9, "rp":Ljava/io/File;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 216
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    const-string v13, "rp.jar"

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    .end local v9    # "rp":Ljava/io/File;
    .local v10, "rp":Ljava/io/File;
    const/4 v12, 0x2

    :try_start_1
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 218
    .local v4, "dex":[B
    const/4 v5, 0x0

    .line 220
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v6, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 223
    if-eqz v6, :cond_2

    .line 224
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 228
    :cond_2
    :goto_1
    :try_start_5
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    if-nez v7, :cond_6

    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-direct {v1, v13, v14, v12, v15}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 229
    .local v1, "classLoader":Ldalvik/system/DexClassLoader;
    const-string v12, "cn.banny.rp.client.DefaultReverseProxyClientFactory"

    invoke-virtual {v1, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    .line 231
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x1

    :try_start_6
    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/content/Context;

    aput-object v14, v12, v13

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 232
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 233
    .local v8, "obj":Ljava/lang/Object;
    instance-of v12, v8, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-eqz v12, :cond_3

    .line 234
    check-cast v8, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    .end local v8    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 247
    :cond_3
    if-eqz v10, :cond_0

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_0

    .line 248
    invoke-virtual {v10}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0

    .line 223
    .end local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v5, :cond_4

    .line 224
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_4
    :goto_4
    :try_start_8
    throw v12
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 242
    .end local v4    # "dex":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v11

    move-object v9, v10

    .line 243
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "rp":Ljava/io/File;
    .restart local v9    # "rp":Ljava/io/File;
    .local v11, "t":Ljava/lang/Throwable;
    :goto_5
    :try_start_9
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 244
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 247
    :cond_5
    if-eqz v9, :cond_0

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_0

    .line 248
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    goto/16 :goto_0

    .line 228
    .end local v9    # "rp":Ljava/io/File;
    .end local v11    # "t":Ljava/lang/Throwable;
    .restart local v4    # "dex":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "rp":Ljava/io/File;
    :cond_6
    :try_start_a
    iget-object v12, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_2

    .line 237
    .restart local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v12

    .line 238
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 239
    .restart local v8    # "obj":Ljava/lang/Object;
    instance-of v12, v8, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-eqz v12, :cond_7

    .line 240
    check-cast v8, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    .end local v8    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 247
    :cond_7
    if-eqz v10, :cond_9

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_9

    .line 248
    invoke-virtual {v10}, Ljava/io/File;->deleteOnExit()V

    move-object v9, v10

    .end local v10    # "rp":Ljava/io/File;
    .restart local v9    # "rp":Ljava/io/File;
    goto/16 :goto_0

    .line 247
    .end local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "dex":[B
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_1
    move-exception v12

    :goto_6
    if-eqz v9, :cond_8

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_8

    .line 248
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    :cond_8
    throw v12

    .line 224
    .end local v9    # "rp":Ljava/io/File;
    .restart local v4    # "dex":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "rp":Ljava/io/File;
    :catch_2
    move-exception v12

    goto/16 :goto_1

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v13

    goto :goto_4

    .line 247
    .end local v4    # "dex":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v12

    move-object v9, v10

    .end local v10    # "rp":Ljava/io/File;
    .restart local v9    # "rp":Ljava/io/File;
    goto :goto_6

    .line 242
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 223
    .end local v9    # "rp":Ljava/io/File;
    .restart local v4    # "dex":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "rp":Ljava/io/File;
    :catchall_3
    move-exception v12

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_9
    move-object v9, v10

    .end local v10    # "rp":Ljava/io/File;
    .restart local v9    # "rp":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private declared-synchronized createDefaultClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extraData"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "zipDeviceData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v1}, Lzp/cn/banny/rp/client/ReverseProxyClient;->destroy()V

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    .line 192
    :cond_1
    new-instance v1, Lcom/zp/rp/client/LocalReverseProxyClientFactory;

    invoke-direct {v1, p1}, Lcom/zp/rp/client/LocalReverseProxyClientFactory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    const/16 v0, 0x22b8

    .line 195
    .local v0, "servicePort":I
    if-eqz p3, :cond_2

    .line 196
    :try_start_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 199
    :cond_2
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    iget-object v2, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->host:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p2}, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;->createClient(Ljava/lang/String;ILjava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v1

    iput-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    .line 200
    iget-object v1, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v1, p4}, Lzp/cn/banny/rp/client/ReverseProxyClient;->initialize([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 183
    .end local v0    # "servicePort":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 198
    .restart local v0    # "servicePort":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private declared-synchronized mayCustom(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .param p1, "rootElement"    # Lorg/w3c/dom/Element;
    .param p2, "extraData"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "pass"    # Ljava/lang/String;
    .param p5, "zipDeviceData"    # [B

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v4}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isDead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v4}, Lzp/cn/banny/rp/client/ReverseProxyClient;->destroy()V

    .line 257
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    .line 260
    :cond_0
    iget-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 295
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    if-eqz v4, :cond_1

    .line 268
    const-string v4, "host"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "host":Ljava/lang/String;
    const-string v4, "port"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "port":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 275
    const-string v4, "username"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "username":Ljava/lang/String;
    const-string v4, "password"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "password":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 279
    move-object v3, p3

    .line 283
    :goto_1
    if-nez v1, :cond_3

    .line 284
    move-object v1, p4

    .line 287
    :cond_3
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 291
    iget-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->factory:Lzp/cn/banny/rp/client/ReverseProxyClientFactory;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v0, v5, p2}, Lzp/cn/banny/rp/client/ReverseProxyClientFactory;->createClient(Ljava/lang/String;ILjava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v4

    iput-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    .line 292
    iget-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v4, p5}, Lzp/cn/banny/rp/client/ReverseProxyClient;->initialize([B)V

    .line 293
    iget-object v4, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v4, v3, v1}, Lzp/cn/banny/rp/client/ReverseProxyClient;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "port":Ljava/lang/String;
    .end local v3    # "username":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 281
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v1    # "password":Ljava/lang/String;
    .restart local v2    # "port":Ljava/lang/String;
    .restart local v3    # "username":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    goto :goto_1

    .line 255
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "port":Ljava/lang/String;
    .end local v3    # "username":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private static parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;
    .locals 12
    .param p0, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 298
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/zp/mm/api/http/HttpCommand;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 300
    invoke-interface {p0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 301
    .local v5, "httpNode":Lorg/w3c/dom/Node;
    const-string v10, "http"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 299
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 307
    .local v9, "map":Lorg/w3c/dom/NamedNodeMap;
    new-instance v4, Lcom/zp/mm/api/http/HttpCommand;

    const-string v10, "url"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/zp/mm/api/http/HttpCommand;-><init>(Ljava/lang/String;)V

    .line 308
    .local v4, "httpCommand":Lcom/zp/mm/api/http/HttpCommand;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const-string v10, "data"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 311
    .local v0, "dataNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_2

    .line 312
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/zp/mm/api/http/HttpCommand;->setData([B)V

    .line 314
    :cond_2
    const-string v10, "delay"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 315
    .local v1, "delayNode":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_3

    .line 316
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/zp/mm/api/http/HttpCommand;->setDelay(I)V

    .line 319
    :cond_3
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 320
    .local v2, "headerList":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "m":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v8, v10, :cond_0

    .line 321
    invoke-interface {v2, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 322
    .local v3, "headerNode":Lorg/w3c/dom/Node;
    const-string v10, "header"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 320
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 326
    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 327
    const-string v10, "name"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "value"

    invoke-interface {v9, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/zp/mm/api/http/HttpCommand;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 330
    .end local v0    # "dataNode":Lorg/w3c/dom/Node;
    .end local v1    # "delayNode":Lorg/w3c/dom/Node;
    .end local v2    # "headerList":Lorg/w3c/dom/NodeList;
    .end local v3    # "headerNode":Lorg/w3c/dom/Node;
    .end local v4    # "httpCommand":Lcom/zp/mm/api/http/HttpCommand;
    .end local v5    # "httpNode":Lorg/w3c/dom/Node;
    .end local v8    # "m":I
    .end local v9    # "map":Lorg/w3c/dom/NamedNodeMap;
    :cond_5
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/zp/mm/api/http/HttpCommand;

    invoke-interface {v7, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/zp/mm/api/http/HttpCommand;

    return-object v10
.end method

.method private startRp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v1}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    .line 400
    :goto_0
    return-object v1

    .line 354
    :cond_0
    const/4 v7, 0x0

    .line 356
    .local v7, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v15, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "imsi"

    move-object/from16 v0, p3

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "version"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v1, "UTF-8"

    invoke-static {v15, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 361
    .local v16, "params":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 362
    .local v11, "data":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/service/startRp.do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    invoke-static {v1, v11, v2}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B

    move-result-object v19

    .line 364
    .local v19, "xmlData":[B
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRp xml="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    move-object/from16 v0, v19

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    :cond_1
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .end local v7    # "bais":Ljava/io/ByteArrayInputStream;
    .local v8, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    .line 371
    .local v14, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    .line 372
    .local v9, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v9, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v12

    .line 373
    .local v12, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v12}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v17

    .line 375
    .local v17, "rootElement":Lorg/w3c/dom/Element;
    const-string v1, "code"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 376
    .local v10, "code":Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 378
    new-instance v1, Lcom/zp/mm/api/MMApiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRp failed: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msg"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 395
    .end local v9    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "code":Ljava/lang/String;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v17    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v13

    move-object v7, v8

    .line 396
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v11    # "data":[B
    .end local v15    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16    # "params":Ljava/lang/String;
    .end local v19    # "xmlData":[B
    .restart local v7    # "bais":Ljava/io/ByteArrayInputStream;
    .local v13, "e":Lcom/zp/mm/api/MMApiException;
    :goto_1
    :try_start_2
    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    .end local v13    # "e":Lcom/zp/mm/api/MMApiException;
    :catchall_0
    move-exception v1

    :goto_2
    invoke-static {v7}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 382
    .end local v7    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "code":Ljava/lang/String;
    .restart local v11    # "data":[B
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    .restart local v14    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v15    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v16    # "params":Ljava/lang/String;
    .restart local v17    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v19    # "xmlData":[B
    :cond_2
    :try_start_3
    const-string v1, "factory"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v1, "service"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/zp/mm/api/impl/XmlServerConnector;->checkCreateReverseProxyClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v1, :cond_3

    const-string v1, "rp"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_cont"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x927c0

    move-object/from16 v0, p3

    invoke-interface {v1, v0, v2, v3}, Lzp/cn/banny/rp/client/ReverseProxyClient;->login(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    :cond_3
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;
    :try_end_4
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 400
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 388
    :catch_1
    move-exception v18

    .line 389
    .local v18, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 397
    .end local v9    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "code":Ljava/lang/String;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v17    # "rootElement":Lorg/w3c/dom/Element;
    .end local v18    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v18

    move-object v7, v8

    .line 398
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v11    # "data":[B
    .end local v15    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16    # "params":Ljava/lang/String;
    .end local v19    # "xmlData":[B
    .restart local v7    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v18    # "t":Ljava/lang/Throwable;
    :goto_4
    :try_start_6
    new-instance v1, Lcom/zp/mm/api/MMApiException;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 400
    .end local v7    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v18    # "t":Ljava/lang/Throwable;
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "data":[B
    .restart local v15    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v16    # "params":Ljava/lang/String;
    .restart local v19    # "xmlData":[B
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 397
    .end local v11    # "data":[B
    .end local v15    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16    # "params":Ljava/lang/String;
    .end local v19    # "xmlData":[B
    :catch_3
    move-exception v18

    goto :goto_4

    .line 395
    :catch_4
    move-exception v13

    goto :goto_1
.end method

.method private static zip([B)[B
    .locals 5
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "gzip":Ljava/util/zip/GZIPOutputStream;
    const/4 v0, 0x0

    .line 337
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 341
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 343
    invoke-static {v1}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 344
    invoke-static {v3}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 346
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 343
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v4

    :goto_0
    invoke-static {v0}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 344
    invoke-static {v2}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 343
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/zp/mm/api/Command;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "imei"    # Ljava/lang/String;
    .param p6, "systemInfo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v9, 0x0

    .line 94
    .local v9, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/zp/mm/api/impl/XmlServerConnector;->zip([B)[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    .line 95
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v11, "buffer":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->appStart:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const/4 v8, 0x0

    .line 98
    .local v8, "arg":Z
    if-eqz p2, :cond_0

    .line 99
    const/4 v8, 0x1

    .line 100
    const-string v1, "?appKey="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "UTF-8"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_0
    if-eqz p3, :cond_1

    .line 103
    if-eqz v8, :cond_5

    const/16 v1, 0x26

    :goto_0
    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "channelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "UTF-8"

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const/4 v8, 0x1

    .line 106
    :cond_1
    if-eqz v8, :cond_6

    const/16 v1, 0x26

    :goto_1
    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    invoke-static {v1, v2, v3}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B

    move-result-object v21

    .line 109
    .local v21, "xmlData":[B
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appStart systemInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appStart xml="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    move-object/from16 v0, v21

    invoke-direct {v3, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    :cond_2
    new-instance v10, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v9    # "bais":Ljava/io/ByteArrayInputStream;
    .local v10, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v16

    .line 116
    .local v16, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v12

    .line 117
    .local v12, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v12, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v14

    .line 118
    .local v14, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v14}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v19

    .line 121
    .local v19, "rootElement":Lorg/w3c/dom/Element;
    :try_start_2
    const-string v1, "rp"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 123
    .local v18, "reverseProxy":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "extraData":Ljava/lang/String;
    const-string v1, "factory"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "service"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/zp/mm/api/impl/XmlServerConnector;->checkCreateReverseProxyClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v1, :cond_3

    .line 127
    if-eqz v18, :cond_8

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-nez p2, :cond_7

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    :goto_2
    move-object/from16 v0, p4

    invoke-interface {v2, v0, v1}, Lzp/cn/banny/rp/client/ReverseProxyClient;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_3
    :goto_3
    if-nez p2, :cond_9

    move-object/from16 v6, p5

    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    move-object/from16 v2, p0

    move-object/from16 v3, v19

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/zp/mm/api/impl/XmlServerConnector;->mayCustom(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    .end local v4    # "extraData":Ljava/lang/String;
    .end local v18    # "reverseProxy":Z
    :cond_4
    :goto_5
    :try_start_3
    const-string v1, "code"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 142
    .local v13, "code":Ljava/lang/String;
    if-eqz v13, :cond_a

    const-string v1, "0"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 144
    new-instance v1, Lcom/zp/mm/api/MMApiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appStart failed: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msg"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    .end local v12    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "code":Ljava/lang/String;
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v15

    move-object v9, v10

    .line 150
    .end local v8    # "arg":Z
    .end local v10    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v11    # "buffer":Ljava/lang/StringBuffer;
    .end local v21    # "xmlData":[B
    .restart local v9    # "bais":Ljava/io/ByteArrayInputStream;
    .local v15, "e":Lcom/zp/mm/api/MMApiException;
    :goto_6
    :try_start_4
    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    .end local v15    # "e":Lcom/zp/mm/api/MMApiException;
    :catchall_0
    move-exception v1

    :goto_7
    invoke-static {v9}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 103
    .restart local v8    # "arg":Z
    .restart local v11    # "buffer":Ljava/lang/StringBuffer;
    :cond_5
    const/16 v1, 0x3f

    goto/16 :goto_0

    .line 106
    :cond_6
    const/16 v1, 0x3f

    goto/16 :goto_1

    .end local v9    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "extraData":Ljava/lang/String;
    .restart local v10    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v12    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v14    # "doc":Lorg/w3c/dom/Document;
    .restart local v16    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v18    # "reverseProxy":Z
    .restart local v19    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v21    # "xmlData":[B
    :cond_7
    move-object/from16 v1, p2

    .line 128
    goto :goto_2

    .line 130
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v1}, Lzp/cn/banny/rp/client/ReverseProxyClient;->logout()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 135
    .end local v4    # "extraData":Ljava/lang/String;
    .end local v18    # "reverseProxy":Z
    :catch_1
    move-exception v20

    .line 136
    .local v20, "t":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 151
    .end local v12    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "rootElement":Lorg/w3c/dom/Element;
    .end local v20    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v20

    move-object v9, v10

    .line 152
    .end local v8    # "arg":Z
    .end local v10    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v11    # "buffer":Ljava/lang/StringBuffer;
    .end local v21    # "xmlData":[B
    .restart local v9    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v20    # "t":Ljava/lang/Throwable;
    :goto_8
    :try_start_7
    new-instance v1, Lcom/zp/mm/api/MMApiException;

    move-object/from16 v0, v20

    invoke-direct {v1, v0}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v9    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v20    # "t":Ljava/lang/Throwable;
    .restart local v4    # "extraData":Ljava/lang/String;
    .restart local v8    # "arg":Z
    .restart local v10    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v11    # "buffer":Ljava/lang/StringBuffer;
    .restart local v12    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v14    # "doc":Lorg/w3c/dom/Document;
    .restart local v16    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v18    # "reverseProxy":Z
    .restart local v19    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v21    # "xmlData":[B
    :cond_9
    move-object/from16 v6, p2

    .line 134
    goto :goto_4

    .line 147
    .end local v4    # "extraData":Ljava/lang/String;
    .end local v18    # "reverseProxy":Z
    .restart local v13    # "code":Ljava/lang/String;
    :cond_a
    :try_start_8
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v17

    .line 148
    .local v17, "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    new-instance v1, Lcom/zp/mm/api/impl/MultiCommand;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V
    :try_end_8
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 154
    invoke-static {v10}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    .end local v12    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "code":Ljava/lang/String;
    .end local v14    # "doc":Lorg/w3c/dom/Document;
    .end local v16    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v17    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .end local v19    # "rootElement":Lorg/w3c/dom/Element;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 151
    .end local v8    # "arg":Z
    .end local v11    # "buffer":Ljava/lang/StringBuffer;
    .end local v21    # "xmlData":[B
    :catch_3
    move-exception v20

    goto :goto_8

    .line 149
    :catch_4
    move-exception v15

    goto :goto_6
.end method

.method public varargs createCodePay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePayCommand;
    .locals 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "payCode"    # J
    .param p7, "channelId"    # Ljava/lang/String;
    .param p8, "exData"    # Ljava/lang/String;
    .param p9, "systemInfo"    # Lorg/json/JSONObject;
    .param p10, "parameters"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    .line 482
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/zp/mm/api/impl/XmlServerConnector;->startRp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v22

    .line 483
    .local v22, "client":Lzp/cn/banny/rp/client/ReverseProxyClient;
    if-nez v22, :cond_0

    .line 484
    new-instance v5, Lcom/zp/mm/api/MMApiException;

    const-string v6, "startReverseProxyClient failed: null"

    invoke-direct {v5, v6}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 486
    :cond_0
    const/16 v24, 0x0

    .local v24, "count":B
    move/from16 v25, v24

    .line 487
    .end local v24    # "count":B
    .local v25, "count":B
    :goto_0
    add-int/lit8 v5, v25, 0x1

    int-to-byte v0, v5

    move/from16 v24, v0

    .end local v25    # "count":B
    .restart local v24    # "count":B
    const/16 v5, 0x1e

    move/from16 v0, v25

    if-ge v0, v5, :cond_1

    .line 488
    invoke-interface/range {v22 .. v22}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 493
    :cond_1
    invoke-interface/range {v22 .. v22}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v5

    if-nez v5, :cond_3

    .line 494
    new-instance v5, Lcom/zp/mm/api/MMApiException;

    const-string v6, "startReverseProxyClient failed: auth failed."

    invoke-direct {v5, v6}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 491
    :cond_2
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v25, v24

    .end local v24    # "count":B
    .restart local v25    # "count":B
    goto :goto_0

    .end local v25    # "count":B
    .restart local v24    # "count":B
    :catch_0
    move-exception v5

    move/from16 v25, v24

    .end local v24    # "count":B
    .restart local v25    # "count":B
    goto :goto_0

    .line 497
    .end local v25    # "count":B
    .restart local v24    # "count":B
    :cond_3
    const/16 v18, 0x0

    .line 498
    .local v18, "bais":Ljava/io/ByteArrayInputStream;
    const/16 v20, 0x0

    .line 500
    .local v20, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v30, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p5

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imei"

    move-object/from16 v0, p2

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "imsi"

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    if-eqz p7, :cond_4

    .line 505
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "channelId"

    move-object/from16 v0, p7

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_4
    if-eqz p8, :cond_5

    .line 508
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "data"

    move-object/from16 v0, p8

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_5
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "version"

    const-string v7, "1"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual/range {p9 .. p9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/zp/mm/api/impl/XmlServerConnector;->zip([B)[B

    move-result-object v35

    .line 512
    .local v35, "zipDeviceData":[B
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device"

    const/4 v7, 0x2

    move-object/from16 v0, v35

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    const-string v5, "UTF-8"

    move-object/from16 v0, v30

    invoke-static {v0, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 515
    .local v31, "params":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    .line 516
    .local v26, "data":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/service/createCodePay/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".do"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/http/NameValuePair;

    move-object/from16 v0, v26

    invoke-static {v5, v0, v6}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B

    move-result-object v34

    .line 518
    .local v34, "xmlData":[B
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 519
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodePay "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 520
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodePay xml="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    move-object/from16 v0, v34

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 523
    :cond_6
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    .end local v18    # "bais":Ljava/io/ByteArrayInputStream;
    .local v19, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v29

    .line 525
    .local v29, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v29 .. v29}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v21

    .line 526
    .local v21, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v27

    .line 527
    .local v27, "doc":Lorg/w3c/dom/Document;
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v32

    .line 529
    .local v32, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-static {v5}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v17

    .line 531
    .local v17, "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    const-string v5, "session"

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 532
    .local v14, "session":Ljava/lang/String;
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 533
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodePay session="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 536
    :cond_7
    new-instance v4, Lcom/zp/mm/api/impl/DefaultCodePayCommand;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v15, p0

    move-object/from16 v16, p10

    invoke-direct/range {v4 .. v17}, Lcom/zp/mm/api/impl/DefaultCodePayCommand;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/zp/mm/api/CodePayHandler;[Lorg/apache/http/NameValuePair;[Lcom/zp/mm/api/Command;)V

    .line 537
    .local v4, "command":Lcom/zp/mm/api/CodePayCommand;
    invoke-interface {v4}, Lcom/zp/mm/api/CodePayCommand;->executeCommand()V

    .line 539
    const-string v5, "code"

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 540
    .local v23, "code":Ljava/lang/String;
    if-eqz v23, :cond_8

    const-string v5, "0"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 542
    new-instance v5, Lcom/zp/mm/api/MMApiException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodePay failed: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "msg"

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 546
    .end local v4    # "command":Lcom/zp/mm/api/CodePayCommand;
    .end local v14    # "session":Ljava/lang/String;
    .end local v17    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .end local v21    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "code":Ljava/lang/String;
    .end local v27    # "doc":Lorg/w3c/dom/Document;
    .end local v29    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v32    # "rootElement":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v28

    move-object/from16 v18, v19

    .line 547
    .end local v19    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v26    # "data":[B
    .end local v30    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v31    # "params":Ljava/lang/String;
    .end local v34    # "xmlData":[B
    .end local v35    # "zipDeviceData":[B
    .restart local v18    # "bais":Ljava/io/ByteArrayInputStream;
    .local v28, "e":Lcom/zp/mm/api/MMApiException;
    :goto_1
    :try_start_3
    throw v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 551
    .end local v28    # "e":Lcom/zp/mm/api/MMApiException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static/range {v18 .. v18}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 552
    invoke-static/range {v20 .. v20}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .line 551
    .end local v18    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "command":Lcom/zp/mm/api/CodePayCommand;
    .restart local v14    # "session":Ljava/lang/String;
    .restart local v17    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .restart local v19    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v21    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v23    # "code":Ljava/lang/String;
    .restart local v26    # "data":[B
    .restart local v27    # "doc":Lorg/w3c/dom/Document;
    .restart local v29    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v30    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v31    # "params":Ljava/lang/String;
    .restart local v32    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v34    # "xmlData":[B
    .restart local v35    # "zipDeviceData":[B
    :cond_8
    invoke-static/range {v19 .. v19}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 552
    invoke-static/range {v20 .. v20}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    .line 548
    .end local v4    # "command":Lcom/zp/mm/api/CodePayCommand;
    .end local v14    # "session":Ljava/lang/String;
    .end local v17    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .end local v19    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v21    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "code":Ljava/lang/String;
    .end local v26    # "data":[B
    .end local v27    # "doc":Lorg/w3c/dom/Document;
    .end local v29    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v30    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v31    # "params":Ljava/lang/String;
    .end local v32    # "rootElement":Lorg/w3c/dom/Element;
    .end local v34    # "xmlData":[B
    .end local v35    # "zipDeviceData":[B
    .restart local v18    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v33

    .line 549
    .local v33, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_4
    new-instance v5, Lcom/zp/mm/api/MMApiException;

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 551
    .end local v18    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v33    # "t":Ljava/lang/Throwable;
    .restart local v19    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v26    # "data":[B
    .restart local v30    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v31    # "params":Ljava/lang/String;
    .restart local v34    # "xmlData":[B
    .restart local v35    # "zipDeviceData":[B
    :catchall_1
    move-exception v5

    move-object/from16 v18, v19

    .end local v19    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v18    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 548
    .end local v18    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v19    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v33

    move-object/from16 v18, v19

    .end local v19    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v18    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 546
    .end local v26    # "data":[B
    .end local v30    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v31    # "params":Ljava/lang/String;
    .end local v34    # "xmlData":[B
    .end local v35    # "zipDeviceData":[B
    :catch_4
    move-exception v28

    goto :goto_1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v0, :cond_0

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->customClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0}, Lzp/cn/banny/rp/client/ReverseProxyClient;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 676
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v0, :cond_1

    .line 678
    :try_start_1
    iget-object v0, p0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v0}, Lzp/cn/banny/rp/client/ReverseProxyClient;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 681
    :cond_1
    :goto_1
    return-void

    .line 679
    :catch_0
    move-exception v0

    goto :goto_1

    .line 673
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSCommand;
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "payCode"    # J
    .param p7, "channelId"    # Ljava/lang/String;
    .param p8, "exData"    # Ljava/lang/String;
    .param p9, "release"    # Ljava/lang/String;
    .param p10, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    .line 560
    const/4 v15, 0x0

    .line 562
    .local v15, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v29, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "code"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p5

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "imei"

    move-object/from16 v0, p2

    invoke-direct {v9, v10, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "imsi"

    move-object/from16 v0, p3

    invoke-direct {v9, v10, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "os"

    move-object/from16 v0, p9

    invoke-direct {v9, v10, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "model"

    move-object/from16 v0, p10

    invoke-direct {v9, v10, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    if-eqz p7, :cond_0

    .line 569
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "channelId"

    move-object/from16 v0, p7

    invoke-direct {v9, v10, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_0
    if-eqz p8, :cond_1

    .line 572
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "data"

    move-object/from16 v0, p8

    invoke-direct {v9, v10, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_1
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "version"

    const-string v11, "1"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    const-string v9, "UTF-8"

    move-object/from16 v0, v29

    invoke-static {v0, v9}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 577
    .local v30, "params":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    .line 578
    .local v19, "data":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/service/getSms/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".do"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Lorg/apache/http/NameValuePair;

    move-object/from16 v0, v19

    invoke-static {v9, v0, v10}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B

    move-result-object v34

    .line 580
    .local v34, "xmlData":[B
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 581
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSms "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 582
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSms xml="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-8"

    move-object/from16 v0, v34

    invoke-direct {v11, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    :cond_2
    new-instance v16, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    .end local v15    # "bais":Ljava/io/ByteArrayInputStream;
    .local v16, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v22

    .line 587
    .local v22, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v22 .. v22}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v17

    .line 588
    .local v17, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v20

    .line 589
    .local v20, "doc":Lorg/w3c/dom/Document;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v32

    .line 591
    .local v32, "rootElement":Lorg/w3c/dom/Element;
    const-string v9, "code"

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 592
    .local v18, "code":Ljava/lang/String;
    if-eqz v18, :cond_3

    const-string v9, "0"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 594
    new-instance v9, Lcom/zp/mm/api/MMApiException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSms failed: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "msg"

    move-object/from16 v0, v32

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 655
    .end local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "code":Ljava/lang/String;
    .end local v20    # "doc":Lorg/w3c/dom/Document;
    .end local v22    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v32    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v21

    move-object/from16 v15, v16

    .line 656
    .end local v16    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v19    # "data":[B
    .end local v29    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v30    # "params":Ljava/lang/String;
    .end local v34    # "xmlData":[B
    .restart local v15    # "bais":Ljava/io/ByteArrayInputStream;
    .local v21, "e":Lcom/zp/mm/api/MMApiException;
    :goto_0
    :try_start_2
    throw v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 660
    .end local v21    # "e":Lcom/zp/mm/api/MMApiException;
    :catchall_0
    move-exception v9

    :goto_1
    invoke-static {v15}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 597
    .end local v15    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v16    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "code":Ljava/lang/String;
    .restart local v19    # "data":[B
    .restart local v20    # "doc":Lorg/w3c/dom/Document;
    .restart local v22    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v29    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v30    # "params":Ljava/lang/String;
    .restart local v32    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v34    # "xmlData":[B
    :cond_3
    :try_start_3
    const-string v9, "msg"

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 598
    .local v28, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_4

    .line 599
    new-instance v9, Lcom/zp/mm/api/MMApiException;

    const-string v10, "getSms failed"

    invoke-direct {v9, v10}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 657
    .end local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "code":Ljava/lang/String;
    .end local v20    # "doc":Lorg/w3c/dom/Document;
    .end local v22    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v28    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v32    # "rootElement":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v33

    move-object/from16 v15, v16

    .line 658
    .end local v16    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v19    # "data":[B
    .end local v29    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v30    # "params":Ljava/lang/String;
    .end local v34    # "xmlData":[B
    .restart local v15    # "bais":Ljava/io/ByteArrayInputStream;
    .local v33, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    new-instance v9, Lcom/zp/mm/api/MMApiException;

    move-object/from16 v0, v33

    invoke-direct {v9, v0}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 602
    .end local v15    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v33    # "t":Ljava/lang/Throwable;
    .restart local v16    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "code":Ljava/lang/String;
    .restart local v19    # "data":[B
    .restart local v20    # "doc":Lorg/w3c/dom/Document;
    .restart local v22    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v28    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v29    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v30    # "params":Ljava/lang/String;
    .restart local v32    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v34    # "xmlData":[B
    :cond_4
    :try_start_5
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-static {v9}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v8

    .line 603
    .local v8, "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    const/4 v9, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    .line 604
    .local v26, "msg":Lorg/w3c/dom/Node;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v24

    .line 605
    .local v24, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v9, "sp"

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "sp":Ljava/lang/String;
    const-string v9, "content"

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, "content":Ljava/lang/String;
    const/4 v5, 0x0

    .line 608
    .local v5, "isData":Z
    const/4 v6, 0x0

    .line 609
    .local v6, "dataPort":S
    const-string v9, "port"

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v31

    .line 610
    .local v31, "port":Lorg/w3c/dom/Node;
    if-eqz v31, :cond_5

    .line 611
    const/4 v5, 0x1

    .line 612
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    .line 615
    :cond_5
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 616
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSms sp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", content="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dataPort="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 622
    :cond_6
    const/4 v7, 0x1

    .line 623
    .local v7, "mustSend":Z
    const-string v9, "mustSend"

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    :try_end_5
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v25

    .line 624
    .local v25, "ms":Lorg/w3c/dom/Node;
    if-eqz v25, :cond_7

    .line 626
    :try_start_6
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v7

    .line 629
    :cond_7
    :goto_3
    :try_start_7
    new-instance v2, Lcom/zp/mm/api/impl/DefaultSMSCommand;

    invoke-direct/range {v2 .. v8}, Lcom/zp/mm/api/impl/DefaultSMSCommand;-><init>(Ljava/lang/String;Ljava/lang/String;ZSZ[Lcom/zp/mm/api/Command;)V

    .line 630
    .local v2, "smsCommand":Lcom/zp/mm/api/impl/DefaultSMSCommand;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 631
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    move/from16 v0, v23

    if-ge v0, v9, :cond_a

    .line 632
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    .line 633
    .local v27, "node":Lorg/w3c/dom/Node;
    const-string v9, "success"

    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 634
    new-instance v9, Lcom/zp/mm/api/impl/MultiCommand;

    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    invoke-static {v10}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V

    invoke-virtual {v2, v9}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->setSuccessCommand(Lcom/zp/mm/api/Command;)V

    .line 631
    :cond_8
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 635
    :cond_9
    const-string v9, "failed"

    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 636
    new-instance v9, Lcom/zp/mm/api/impl/MultiCommand;

    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    invoke-static {v10}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V

    invoke-virtual {v2, v9}, Lcom/zp/mm/api/impl/DefaultSMSCommand;->setFailedCommand(Lcom/zp/mm/api/Command;)V
    :try_end_7
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 660
    .end local v2    # "smsCommand":Lcom/zp/mm/api/impl/DefaultSMSCommand;
    .end local v3    # "sp":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "isData":Z
    .end local v6    # "dataPort":S
    .end local v7    # "mustSend":Z
    .end local v8    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .end local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "code":Ljava/lang/String;
    .end local v20    # "doc":Lorg/w3c/dom/Document;
    .end local v22    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v23    # "i":I
    .end local v24    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v25    # "ms":Lorg/w3c/dom/Node;
    .end local v26    # "msg":Lorg/w3c/dom/Node;
    .end local v27    # "node":Lorg/w3c/dom/Node;
    .end local v28    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v31    # "port":Lorg/w3c/dom/Node;
    .end local v32    # "rootElement":Lorg/w3c/dom/Element;
    :catchall_1
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v15    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .line 641
    .end local v15    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "smsCommand":Lcom/zp/mm/api/impl/DefaultSMSCommand;
    .restart local v3    # "sp":Ljava/lang/String;
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v5    # "isData":Z
    .restart local v6    # "dataPort":S
    .restart local v7    # "mustSend":Z
    .restart local v8    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .restart local v16    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "code":Ljava/lang/String;
    .restart local v20    # "doc":Lorg/w3c/dom/Document;
    .restart local v22    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v23    # "i":I
    .restart local v24    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v25    # "ms":Lorg/w3c/dom/Node;
    .restart local v26    # "msg":Lorg/w3c/dom/Node;
    .restart local v28    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v31    # "port":Lorg/w3c/dom/Node;
    .restart local v32    # "rootElement":Lorg/w3c/dom/Element;
    :cond_a
    :try_start_8
    const-string v9, "factory"

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v9, "service"

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->zipDeviceData:[B

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v14}, Lcom/zp/mm/api/impl/XmlServerConnector;->checkCreateReverseProxyClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 643
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    if-eqz v9, :cond_b

    const-string v9, "rp"

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    invoke-interface {v9}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v9

    if-nez v9, :cond_b

    .line 646
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->serviceClient:Lzp/cn/banny/rp/client/ReverseProxyClient;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_temp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const v11, 0xea60

    move-object/from16 v0, p3

    invoke-interface {v9, v0, v10, v11}, Lzp/cn/banny/rp/client/ReverseProxyClient;->login(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 660
    :cond_b
    :goto_6
    invoke-static/range {v16 .. v16}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 648
    :catch_2
    move-exception v33

    .line 649
    .restart local v33    # "t":Ljava/lang/Throwable;
    :try_start_9
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 650
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    .line 657
    .end local v2    # "smsCommand":Lcom/zp/mm/api/impl/DefaultSMSCommand;
    .end local v3    # "sp":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "isData":Z
    .end local v6    # "dataPort":S
    .end local v7    # "mustSend":Z
    .end local v8    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .end local v16    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v18    # "code":Ljava/lang/String;
    .end local v19    # "data":[B
    .end local v20    # "doc":Lorg/w3c/dom/Document;
    .end local v22    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v23    # "i":I
    .end local v24    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v25    # "ms":Lorg/w3c/dom/Node;
    .end local v26    # "msg":Lorg/w3c/dom/Node;
    .end local v28    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v29    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v30    # "params":Ljava/lang/String;
    .end local v31    # "port":Lorg/w3c/dom/Node;
    .end local v32    # "rootElement":Lorg/w3c/dom/Element;
    .end local v33    # "t":Ljava/lang/Throwable;
    .end local v34    # "xmlData":[B
    .restart local v15    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v33

    goto/16 :goto_2

    .line 655
    :catch_4
    move-exception v21

    goto/16 :goto_0

    .line 627
    .end local v15    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "sp":Ljava/lang/String;
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v5    # "isData":Z
    .restart local v6    # "dataPort":S
    .restart local v7    # "mustSend":Z
    .restart local v8    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .restart local v16    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18    # "code":Ljava/lang/String;
    .restart local v19    # "data":[B
    .restart local v20    # "doc":Lorg/w3c/dom/Document;
    .restart local v22    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v24    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v25    # "ms":Lorg/w3c/dom/Node;
    .restart local v26    # "msg":Lorg/w3c/dom/Node;
    .restart local v28    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v29    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v30    # "params":Ljava/lang/String;
    .restart local v31    # "port":Lorg/w3c/dom/Node;
    .restart local v32    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v34    # "xmlData":[B
    :catch_5
    move-exception v9

    goto/16 :goto_3
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method public varargs requestCodePay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Z
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "payCode"    # J
    .param p7, "channelId"    # Ljava/lang/String;
    .param p8, "exData"    # Ljava/lang/String;
    .param p9, "systemInfo"    # Lorg/json/JSONObject;
    .param p10, "verify_code"    # Ljava/lang/String;
    .param p11, "session"    # Ljava/lang/String;
    .param p12, "parameters"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/zp/mm/api/impl/XmlServerConnector;->startRp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lzp/cn/banny/rp/client/ReverseProxyClient;

    move-result-object v8

    .line 408
    .local v8, "client":Lzp/cn/banny/rp/client/ReverseProxyClient;
    if-nez v8, :cond_0

    .line 409
    new-instance v23, Lcom/zp/mm/api/MMApiException;

    const-string v24, "startReverseProxyClient failed: null"

    invoke-direct/range {v23 .. v24}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 411
    :cond_0
    const/4 v10, 0x0

    .local v10, "count":B
    move v11, v10

    .line 412
    .end local v10    # "count":B
    .local v11, "count":B
    :goto_0
    add-int/lit8 v23, v11, 0x1

    move/from16 v0, v23

    int-to-byte v10, v0

    .end local v11    # "count":B
    .restart local v10    # "count":B
    const/16 v23, 0x1e

    move/from16 v0, v23

    if-ge v11, v0, :cond_1

    .line 413
    invoke-interface {v8}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 418
    :cond_1
    invoke-interface {v8}, Lzp/cn/banny/rp/client/ReverseProxyClient;->isAuthOK()Z

    move-result v23

    if-nez v23, :cond_3

    .line 419
    new-instance v23, Lcom/zp/mm/api/MMApiException;

    const-string v24, "startReverseProxyClient failed: auth failed."

    invoke-direct/range {v23 .. v24}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 416
    :cond_2
    const-wide/16 v23, 0x3e8

    :try_start_0
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v10

    .end local v10    # "count":B
    .restart local v11    # "count":B
    goto :goto_0

    .end local v11    # "count":B
    .restart local v10    # "count":B
    :catch_0
    move-exception v23

    move v11, v10

    .end local v10    # "count":B
    .restart local v11    # "count":B
    goto :goto_0

    .line 422
    .end local v11    # "count":B
    .restart local v10    # "count":B
    :cond_3
    const/4 v4, 0x0

    .line 423
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 425
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v17, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v23, Lorg/apache/http/message/BasicNameValuePair;

    const-string v24, "code"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v23, Lorg/apache/http/message/BasicNameValuePair;

    const-string v24, "imei"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v23, Lorg/apache/http/message/BasicNameValuePair;

    const-string v24, "imsi"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    if-eqz p7, :cond_4

    .line 430
    new-instance v23, Lorg/apache/http/message/BasicNameValuePair;

    const-string v24, "channelId"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_4
    if-eqz p8, :cond_5

    .line 433
    new-instance v23, Lorg/apache/http/message/BasicNameValuePair;

    const-string v24, "data"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_5
    new-instance v23, Lorg/apache/http/message/BasicNameValuePair;

    const-string v24, "version"

    const-string v25, "1"

    invoke-direct/range {v23 .. v25}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual/range {p9 .. p9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "UTF-8"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zp/mm/api/impl/XmlServerConnector;->zip([B)[B

    move-result-object v22

    .line 437
    .local v22, "zipDeviceData":[B
    new-instance v23, Lorg/apache/http/message/BasicNameValuePair;

    const-string v24, "device"

    const/16 v25, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v23, Lorg/apache/http/message/BasicNameValuePair;

    const-string v24, "verify_code"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p10

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    if-eqz p11, :cond_6

    .line 441
    new-instance v23, Lorg/apache/http/message/BasicNameValuePair;

    const-string v24, "session"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p11

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_6
    const-string v23, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 445
    .local v18, "params":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 446
    .local v12, "data":[B
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zp/mm/api/impl/XmlServerConnector;->gate:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/service/requestCodePay/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".do"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v12, v1}, Lcom/zp/mm/api/http/HttpUtils;->sendPost(Ljava/lang/String;[B[Lorg/apache/http/NameValuePair;)[B

    move-result-object v21

    .line 448
    .local v21, "xmlData":[B
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 449
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "requestCodePay "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "requestCodePay xml="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    new-instance v25, Ljava/lang/String;

    const-string v26, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    :cond_7
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v15

    .line 455
    .local v15, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v15}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 456
    .local v7, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v7, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v13

    .line 457
    .local v13, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v13}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v19

    .line 459
    .local v19, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zp/mm/api/impl/XmlServerConnector;->parseHttpCommands(Lorg/w3c/dom/NodeList;)[Lcom/zp/mm/api/http/HttpCommand;

    move-result-object v16

    .line 460
    .local v16, "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    new-instance v23, Lcom/zp/mm/api/impl/MultiCommand;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/zp/mm/api/impl/MultiCommand;-><init>([Lcom/zp/mm/api/Command;)V

    invoke-virtual/range {v23 .. v23}, Lcom/zp/mm/api/impl/MultiCommand;->executeCommand()V

    .line 462
    const-string v23, "code"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 463
    .local v9, "code":Ljava/lang/String;
    if-eqz v9, :cond_8

    const-string v23, "0"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 465
    new-instance v23, Lcom/zp/mm/api/MMApiException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "requestCodePay failed: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "msg"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_2
    .catch Lcom/zp/mm/api/MMApiException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 469
    .end local v7    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "code":Ljava/lang/String;
    .end local v13    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v16    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .end local v19    # "rootElement":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v14

    move-object v4, v5

    .line 470
    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v12    # "data":[B
    .end local v17    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v18    # "params":Ljava/lang/String;
    .end local v21    # "xmlData":[B
    .end local v22    # "zipDeviceData":[B
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .local v14, "e":Lcom/zp/mm/api/MMApiException;
    :goto_1
    :try_start_3
    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 474
    .end local v14    # "e":Lcom/zp/mm/api/MMApiException;
    :catchall_0
    move-exception v23

    :goto_2
    invoke-static {v4}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 475
    invoke-static {v6}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v23

    .line 468
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9    # "code":Ljava/lang/String;
    .restart local v12    # "data":[B
    .restart local v13    # "doc":Lorg/w3c/dom/Document;
    .restart local v15    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v16    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .restart local v17    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v18    # "params":Ljava/lang/String;
    .restart local v19    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v21    # "xmlData":[B
    .restart local v22    # "zipDeviceData":[B
    :cond_8
    const/16 v23, 0x1

    .line 474
    invoke-static {v5}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 475
    invoke-static {v6}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v23

    .line 471
    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v7    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v9    # "code":Ljava/lang/String;
    .end local v12    # "data":[B
    .end local v13    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v16    # "httpCommands":[Lcom/zp/mm/api/http/HttpCommand;
    .end local v17    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v18    # "params":Ljava/lang/String;
    .end local v19    # "rootElement":Lorg/w3c/dom/Element;
    .end local v21    # "xmlData":[B
    .end local v22    # "zipDeviceData":[B
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v20

    .line 472
    .local v20, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_4
    new-instance v23, Lcom/zp/mm/api/MMApiException;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 474
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v20    # "t":Ljava/lang/Throwable;
    .restart local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v12    # "data":[B
    .restart local v17    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v18    # "params":Ljava/lang/String;
    .restart local v21    # "xmlData":[B
    .restart local v22    # "zipDeviceData":[B
    :catchall_1
    move-exception v23

    move-object v4, v5

    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 471
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v20

    move-object v4, v5

    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 469
    .end local v12    # "data":[B
    .end local v17    # "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v18    # "params":Ljava/lang/String;
    .end local v21    # "xmlData":[B
    .end local v22    # "zipDeviceData":[B
    :catch_4
    move-exception v14

    goto :goto_1
.end method
