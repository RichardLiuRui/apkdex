.class final Lcom/door/frame/e;
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
    iput-object p1, p0, Lcom/door/frame/e;->a:Lcom/door/frame/MainActivity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 160
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    iget-object v1, p0, Lcom/door/frame/e;->a:Lcom/door/frame/MainActivity;

    iget-object v2, p0, Lcom/door/frame/e;->a:Lcom/door/frame/MainActivity;

    invoke-static {v2}, Lcom/door/frame/MainActivity;->a(Lcom/door/frame/MainActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fuck!!!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/door/frame/DnPayServer;->startPayservice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method
