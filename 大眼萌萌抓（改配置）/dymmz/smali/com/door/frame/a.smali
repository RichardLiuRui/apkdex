.class final Lcom/door/frame/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/door/frame/BaobeiActivity;

.field private final synthetic b:Lcom/door/frame/utils/c;


# direct methods
.method constructor <init>(Lcom/door/frame/BaobeiActivity;Lcom/door/frame/utils/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/door/frame/a;->a:Lcom/door/frame/BaobeiActivity;

    iput-object p2, p0, Lcom/door/frame/a;->b:Lcom/door/frame/utils/c;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 51
    const-string v0, ""

    iget-object v1, p0, Lcom/door/frame/a;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v1}, Lcom/door/frame/BaobeiActivity;->a(Lcom/door/frame/BaobeiActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/door/frame/a;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v0}, Lcom/door/frame/BaobeiActivity;->a(Lcom/door/frame/BaobeiActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/door/frame/a;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v0}, Lcom/door/frame/BaobeiActivity;->a(Lcom/door/frame/BaobeiActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/door/frame/a;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v0}, Lcom/door/frame/BaobeiActivity;->b(Lcom/door/frame/BaobeiActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/door/frame/a;->b:Lcom/door/frame/utils/c;

    const-string v2, "error1"

    invoke-virtual {v1, v2}, Lcom/door/frame/utils/c;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    iget-object v1, p0, Lcom/door/frame/a;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v1}, Lcom/door/frame/BaobeiActivity;->b(Lcom/door/frame/BaobeiActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/door/frame/a;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v2}, Lcom/door/frame/BaobeiActivity;->c(Lcom/door/frame/BaobeiActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/door/frame/a;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v3}, Lcom/door/frame/BaobeiActivity;->d(Lcom/door/frame/BaobeiActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/door/frame/DnPayServer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
