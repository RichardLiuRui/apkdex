.class public Lcom/mj/jar/pay/DexClass;
.super Ljava/lang/Object;
.source "DexClass.java"


# static fields
.field public static final APK_NAME:Ljava/lang/String; = "qz.apk"

.field public static dexClass:Lcom/mj/jar/pay/DexClass;


# instance fields
.field private dexClassLoader:Ldalvik/system/DexClassLoader;

.field private filePath:Ljava/lang/String;

.field private isDexInit:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/mj/jar/pay/DexClass;->dexClass:Lcom/mj/jar/pay/DexClass;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/mj/jar/pay/DexClass;->mContext:Landroid/content/Context;

    .line 11
    iput-object v0, p0, Lcom/mj/jar/pay/DexClass;->dexClassLoader:Ldalvik/system/DexClassLoader;

    .line 12
    iput-boolean v1, p0, Lcom/mj/jar/pay/DexClass;->isDexInit:Z

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mj/jar/pay/DexClass;->mContext:Landroid/content/Context;

    .line 27
    iput-boolean v1, p0, Lcom/mj/jar/pay/DexClass;->isDexInit:Z

    .line 28
    iput-object p2, p0, Lcom/mj/jar/pay/DexClass;->filePath:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/mj/jar/pay/DexClass;->getInItDexClass()Z

    .line 30
    return-void
.end method

.method private declared-synchronized getInItDexClass()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/mj/jar/pay/DexClass;->isDexInit:Z

    if-eqz v2, :cond_0

    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mj/jar/pay/DexClass;->isDexInit:Z

    .line 53
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mj/jar/pay/DexClass;->dexClassLoader:Ldalvik/system/DexClassLoader;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/mj/jar/pay/DexClass;->dexClassLoader:Ldalvik/system/DexClassLoader;

    if-nez v2, :cond_2

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/mj/jar/pay/DexClass;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "jarTarget":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/mj/jar/pay/DexClass;->mContext:Landroid/content/Context;

    const-string v3, "qz.apk"

    invoke-static {v2, v3, v0}, Lcom/mj/jar/pay/UpdateSDK;->copyfile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 61
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mj/jar/pay/DexClass;->filePath:Ljava/lang/String;

    const-string v4, "apk"

    const-string v5, "dex"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 63
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 64
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mj/jar/pay/DexClass;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 63
    iput-object v2, p0, Lcom/mj/jar/pay/DexClass;->dexClassLoader:Ldalvik/system/DexClassLoader;

    .line 67
    .end local v0    # "jarTarget":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/mj/jar/pay/DexClass;->dexClassLoader:Ldalvik/system/DexClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 68
    const/4 v1, 0x1

    .line 71
    :cond_3
    monitor-exit p0

    return v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static install(Landroid/content/Context;Ljava/lang/String;)Lcom/mj/jar/pay/DexClass;
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-object v0, Lcom/mj/jar/pay/DexClass;->dexClass:Lcom/mj/jar/pay/DexClass;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/mj/jar/pay/DexClass;

    invoke-direct {v0, p0, p1}, Lcom/mj/jar/pay/DexClass;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/mj/jar/pay/DexClass;->dexClass:Lcom/mj/jar/pay/DexClass;

    .line 22
    :cond_0
    sget-object v0, Lcom/mj/jar/pay/DexClass;->dexClass:Lcom/mj/jar/pay/DexClass;

    return-object v0
.end method


# virtual methods
.method public getDexClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mj/jar/pay/DexClass;->getInItDexClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/mj/jar/pay/DexClass;->dexClassLoader:Ldalvik/system/DexClassLoader;

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/mj/jar/pay/DexClass;->dexClassLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v1, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 47
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDexClassChange()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mj/jar/pay/DexClass;->isDexInit:Z

    .line 34
    return-void
.end method
