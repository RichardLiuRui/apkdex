.class public Lcom/zy/hez/c/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/zy/hez/c/g;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ldalvik/system/DexClassLoader;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zy/hez/c/g;->a:Lcom/zy/hez/c/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zy/hez/c/g;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/zy/hez/c/g;->c:Ldalvik/system/DexClassLoader;

    iput-boolean v1, p0, Lcom/zy/hez/c/g;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zy/hez/c/g;->b:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/zy/hez/c/g;->d:Z

    iput-object p2, p0, Lcom/zy/hez/c/g;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zy/hez/c/g;->c()Z

    invoke-virtual {p0}, Lcom/zy/hez/c/g;->a()Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/zy/hez/c/g;
    .locals 1

    sget-object v0, Lcom/zy/hez/c/g;->a:Lcom/zy/hez/c/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zy/hez/c/g;

    invoke-direct {v0, p0, p1}, Lcom/zy/hez/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/zy/hez/c/g;->a:Lcom/zy/hez/c/g;

    :cond_0
    sget-object v0, Lcom/zy/hez/c/g;->a:Lcom/zy/hez/c/g;

    return-object v0
.end method

.method private declared-synchronized c()Z
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/zy/hez/c/g;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zy/hez/c/g;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zy/hez/c/g;->c:Ldalvik/system/DexClassLoader;

    :cond_0
    iget-object v1, p0, Lcom/zy/hez/c/g;->c:Ldalvik/system/DexClassLoader;

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/zy/hez/c/g;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zy/hez/c/g;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/zy/hez/c/k;->a(Landroid/content/Context;Ljava/io/File;)V

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/zy/hez/c/g;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/zy/hez/a/a;->A:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/zy/hez/a/a;->B:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zy/hez/c/g;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v2, v3, v1, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v2, p0, Lcom/zy/hez/c/g;->c:Ldalvik/system/DexClassLoader;

    :cond_2
    iget-object v1, p0, Lcom/zy/hez/c/g;->c:Ldalvik/system/DexClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zy/hez/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zy/hez/c/g;->c:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zy/hez/c/g;->c:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "001"

    const-string v0, "002"

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zy/hez/c/g;->d:Z

    return-void
.end method
