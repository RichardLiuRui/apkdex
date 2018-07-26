.class public Lcom/p/s/j/z/c/g;
.super Ljava/lang/Object;
.source "CLoaderFactory.java"


# static fields
.field private static a:[B

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/p/s/j/z/c/g;->a:[B

    .line 59
    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/p/s/j/z/c/g;->b:[B

    .line 61
    return-void

    .line 9
    :array_0
    .array-data 1
        0x5ft
        0x6et
        0x6et
        0x63t
    .end array-data

    .line 59
    :array_1
    .array-data 1
        0x64t
        0x61t
        0x6ct
        0x76t
        0x69t
        0x6bt
        0x2et
        0x73t
        0x79t
        0x73t
        0x74t
        0x65t
        0x6dt
        0x2et
        0x44t
        0x65t
        0x78t
        0x43t
        0x6ct
        0x61t
        0x73t
        0x73t
        0x4ct
        0x6ft
        0x61t
        0x64t
        0x65t
        0x72t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/p/s/j/z/c/g;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 64
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/p/s/j/z/c/g;->a:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 80
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 64
    goto :goto_0

    .line 69
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/p/s/j/z/c/g;->a(Ljava/lang/String;)V

    .line 70
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/p/s/j/z/c/g;->b:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x1

    .line 71
    const-class v4, Lcom/p/s/j/z/c/g;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 70
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 73
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 74
    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v3, v4

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 75
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x3

    .line 77
    const-class v4, Lcom/p/s/j/z/c/g;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    aput-object v4, v3, v0

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 32
    :cond_2
    :try_start_1
    aget-object v3, v1, v0

    .line 33
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 34
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 35
    invoke-static {v3}, Lcom/p/s/j/z/c/g;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 47
    if-nez p0, :cond_1

    .line 56
    :cond_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 52
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 53
    invoke-static {v3}, Lcom/p/s/j/z/c/g;->a(Ljava/io/File;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
