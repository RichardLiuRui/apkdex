.class public final Lcom/mm/hszp/log/e;
.super Ljava/lang/Object;


# static fields
.field private static s:Lcom/mm/hszp/log/e;


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

.method public static a()Lcom/mm/hszp/log/e;
    .locals 1

    sget-object v0, Lcom/mm/hszp/log/e;->s:Lcom/mm/hszp/log/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mm/hszp/log/e;

    invoke-direct {v0}, Lcom/mm/hszp/log/e;-><init>()V

    sput-object v0, Lcom/mm/hszp/log/e;->s:Lcom/mm/hszp/log/e;

    :cond_0
    sget-object v0, Lcom/mm/hszp/log/e;->s:Lcom/mm/hszp/log/e;

    return-object v0
.end method
