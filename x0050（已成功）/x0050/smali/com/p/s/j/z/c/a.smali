.class public final Lcom/p/s/j/z/c/a;
.super Ljava/lang/Object;
.source "ALoader.java"


# static fields
.field private static b:Lcom/p/s/j/z/c/a;

.field private static final c:[B

.field private static d:[B


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 12
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/p/s/j/z/c/a;->c:[B

    .line 15
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/p/s/j/z/c/a;->d:[B

    return-void

    .line 12
    :array_0
    .array-data 1
        0x41t
        0x2dt
        0x43t
        0x6ct
        0x61t
        0x73t
        0x73t
    .end array-data

    .line 15
    :array_1
    .array-data 1
        0x53t
        0x2dt
        0x43t
        0x6ct
        0x61t
        0x73t
        0x73t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/p/s/j/z/c/a;->a:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/p/s/j/z/c/a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/p/s/j/z/c/a;->b:Lcom/p/s/j/z/c/a;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/p/s/j/z/c/a;

    invoke-direct {v0, p0}, Lcom/p/s/j/z/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/p/s/j/z/c/a;->b:Lcom/p/s/j/z/c/a;

    .line 25
    :cond_0
    sget-object v0, Lcom/p/s/j/z/c/a;->b:Lcom/p/s/j/z/c/a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/p/s/j/z/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/p/s/j/z/c/d;->a(Landroid/content/Context;)Lcom/p/s/j/z/c/d;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/p/s/j/z/c/a;->c:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/p/s/j/z/c/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/p/s/j/z/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/p/s/j/z/c/d;->a(Landroid/content/Context;)Lcom/p/s/j/z/c/d;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/p/s/j/z/c/a;->d:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/p/s/j/z/c/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
