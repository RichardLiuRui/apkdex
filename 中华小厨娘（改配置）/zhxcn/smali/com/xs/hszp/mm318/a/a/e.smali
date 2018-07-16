.class public final Lcom/xs/hszp/mm318/a/a/e;
.super Ljava/lang/Object;


# static fields
.field private static s:Lcom/xs/hszp/mm318/a/a/e;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xs/hszp/mm318/a/a/e;
    .locals 1

    sget-object v0, Lcom/xs/hszp/mm318/a/a/e;->s:Lcom/xs/hszp/mm318/a/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xs/hszp/mm318/a/a/e;

    invoke-direct {v0}, Lcom/xs/hszp/mm318/a/a/e;-><init>()V

    sput-object v0, Lcom/xs/hszp/mm318/a/a/e;->s:Lcom/xs/hszp/mm318/a/a/e;

    :cond_0
    sget-object v0, Lcom/xs/hszp/mm318/a/a/e;->s:Lcom/xs/hszp/mm318/a/a/e;

    return-object v0
.end method
