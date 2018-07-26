.class final Lcom/boJUF/mB/mB/VD/Iz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Z

.field private synthetic cp:Lcom/boJUF/mB/mB/VD/vG;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/vG;Z)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/Iz;->cp:Lcom/boJUF/mB/mB/VD/vG;

    iput-boolean p2, p0, Lcom/boJUF/mB/mB/VD/Iz;->LA:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/boJUF/mB/mB/VD/Iz;->LA:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Iz;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->On(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "getMobileDataEnabled"

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/Iz;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Iz;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->IL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Iz;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "isForceOpenedData"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Iz;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->Lx(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Iz;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "isForceOpenedWifi"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
