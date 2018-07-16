.class final Lcom/door/frame/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/door/frame/MainActivity;


# direct methods
.method constructor <init>(Lcom/door/frame/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/door/frame/g;->a:Lcom/door/frame/MainActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 105
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    iget-object v1, p0, Lcom/door/frame/g;->a:Lcom/door/frame/MainActivity;

    const/16 v2, 0x1f4

    const-string v3, "003V"

    const-string v4, "fuck!!!"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/door/frame/DnPayServer;->quickPayservice(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
