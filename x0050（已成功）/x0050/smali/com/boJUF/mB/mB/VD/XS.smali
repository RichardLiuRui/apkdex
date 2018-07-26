.class public final Lcom/boJUF/mB/mB/VD/XS;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private LA:Ljava/lang/String;

.field private synthetic cp:Lcom/boJUF/mB/mB/VD/Ke;


# direct methods
.method public constructor <init>(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/XS;->cp:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/boJUF/mB/mB/VD/XS;->LA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/XS;->cp:Lcom/boJUF/mB/mB/VD/Ke;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/XS;->LA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/XS;->cp:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-static {v1}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Lcom/boJUF/mB/mB/VD/Ke;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v1

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/XS;->cp:Lcom/boJUF/mB/mB/VD/Ke;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/XS;->LA:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Lcom/boJUF/mB/mB/VD/Ke;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/XS;->LA:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/boJUF/mB/mB/Xd/uI;->oC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->VM:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cpOid"

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/XS;->LA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payType"

    const-string v2, "MP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/XS;->cp:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-static {v1}, Lcom/boJUF/mB/mB/VD/Ke;->cp(Lcom/boJUF/mB/mB/VD/Ke;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    const/16 v3, 0x845

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Landroid/os/Handler;IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
