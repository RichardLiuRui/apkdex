.class final Lcom/mpay/hszp/core/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mpay/hszp/core/a;


# direct methods
.method constructor <init>(Lcom/mpay/hszp/core/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mpay/hszp/core/c;->a:Lcom/mpay/hszp/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mpay/hszp/core/c;->a:Lcom/mpay/hszp/core/a;

    const/4 v1, -0x8

    const-string v2, "\u53d1\u9001\u77ed\u4fe1\u8d85\u65f6"

    invoke-static {v0, v1, v2}, Lcom/mpay/hszp/core/a;->a(Lcom/mpay/hszp/core/a;ILjava/lang/String;)V

    return-void
.end method
