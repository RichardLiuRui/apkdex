.class final Lcom/boJUF/uI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Landroid/app/Activity;

.field private synthetic On:Ljava/lang/String;

.field private synthetic TP:Lcom/boJUF/Kuox;

.field private synthetic cp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boJUF/Kuox;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/uI;->TP:Lcom/boJUF/Kuox;

    iput-object p2, p0, Lcom/boJUF/uI;->LA:Landroid/app/Activity;

    iput-object p3, p0, Lcom/boJUF/uI;->cp:Ljava/lang/String;

    iput-object p4, p0, Lcom/boJUF/uI;->On:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/boJUF/uI;->TP:Lcom/boJUF/Kuox;

    iget-object v1, p0, Lcom/boJUF/uI;->LA:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/boJUF/Kuox;->LA(Lcom/boJUF/Kuox;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/uI;->TP:Lcom/boJUF/Kuox;

    iget-object v1, p0, Lcom/boJUF/uI;->LA:Landroid/app/Activity;

    iget-object v2, p0, Lcom/boJUF/uI;->cp:Ljava/lang/String;

    iget-object v3, p0, Lcom/boJUF/uI;->On:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boJUF/Kuox;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/boJUF/uI;->LA:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "checkPermission"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/boJUF/uI;->LA:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/VD/vG;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/uI;->cp:Ljava/lang/String;

    iget-object v2, p0, Lcom/boJUF/uI;->On:Ljava/lang/String;

    iget-object v3, p0, Lcom/boJUF/uI;->LA:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0
.end method
