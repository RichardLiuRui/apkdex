.class final Lcom/boJUF/mB/mB/VD/bT;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Ljava/lang/String;

.field private synthetic cp:Lcom/boJUF/mB/mB/VD/vG;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/vG;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/bT;->cp:Lcom/boJUF/mB/mB/VD/vG;

    iput-object p2, p0, Lcom/boJUF/mB/mB/VD/bT;->LA:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/bT;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->cp(Lcom/boJUF/mB/mB/VD/vG;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "mobile"

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/bT;->LA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/bT;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "pnum"

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/bT;->LA:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/bT;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v3}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/util/Map;Lcom/boJUF/mB/mB/pO/mB/uI;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/boJUF/mB/mB/VD/tQ;->LA()Lcom/boJUF/mB/mB/VD/XQ;

    move-result-object v1

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/bT;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v2}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boJUF/mB/mB/VD/XQ;->LA(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/bT;->cp:Lcom/boJUF/mB/mB/VD/vG;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/util/HashMap;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/boJUF/mB/mB/Iy/uI;->LA()Lcom/boJUF/mB/mB/Iy/uI;

    invoke-static {v0}, Lcom/boJUF/mB/mB/Iy/uI;->LA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/bT;->cp:Lcom/boJUF/mB/mB/VD/vG;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/VD/vG;->LA(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/bT;->cp:Lcom/boJUF/mB/mB/VD/vG;

    invoke-static {v1, v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Lcom/boJUF/mB/mB/VD/vG;Ljava/lang/Object;)V

    goto :goto_0
.end method
