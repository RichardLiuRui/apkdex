.class final Lcom/door/frame/b;
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
    iput-object p1, p0, Lcom/door/frame/b;->a:Lcom/door/frame/BaobeiActivity;

    iput-object p2, p0, Lcom/door/frame/b;->b:Lcom/door/frame/utils/c;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/door/frame/b;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v0}, Lcom/door/frame/BaobeiActivity;->e(Lcom/door/frame/BaobeiActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/door/frame/b;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v1}, Lcom/door/frame/BaobeiActivity;->e(Lcom/door/frame/BaobeiActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/door/frame/b;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v0}, Lcom/door/frame/BaobeiActivity;->b(Lcom/door/frame/BaobeiActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/door/frame/b;->b:Lcom/door/frame/utils/c;

    const-string v2, "error2"

    invoke-virtual {v1, v2}, Lcom/door/frame/utils/c;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/door/frame/b;->a:Lcom/door/frame/BaobeiActivity;

    iget-object v1, p0, Lcom/door/frame/b;->a:Lcom/door/frame/BaobeiActivity;

    invoke-static {v1}, Lcom/door/frame/BaobeiActivity;->e(Lcom/door/frame/BaobeiActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/door/frame/BaobeiActivity;->a(Lcom/door/frame/BaobeiActivity;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/door/frame/b;->a:Lcom/door/frame/BaobeiActivity;

    invoke-virtual {v0}, Lcom/door/frame/BaobeiActivity;->finish()V

    goto :goto_0
.end method
