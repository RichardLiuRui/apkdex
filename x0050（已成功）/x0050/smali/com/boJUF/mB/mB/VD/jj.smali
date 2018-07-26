.class final Lcom/boJUF/mB/mB/VD/jj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Landroid/content/Context;

.field private synthetic On:Ljava/lang/String;

.field private synthetic TP:Ljava/lang/String;

.field private synthetic cp:Ljava/lang/String;

.field private synthetic na:Lcom/boJUF/mB/mB/VD/Ke;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/Ke;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/jj;->na:Lcom/boJUF/mB/mB/VD/Ke;

    iput-object p2, p0, Lcom/boJUF/mB/mB/VD/jj;->LA:Landroid/content/Context;

    iput-object p3, p0, Lcom/boJUF/mB/mB/VD/jj;->cp:Ljava/lang/String;

    iput-object p4, p0, Lcom/boJUF/mB/mB/VD/jj;->On:Ljava/lang/String;

    iput-object p5, p0, Lcom/boJUF/mB/mB/VD/jj;->TP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/jj;->LA:Landroid/content/Context;

    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->On(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/jj;->na:Lcom/boJUF/mB/mB/VD/Ke;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/jj;->LA:Landroid/content/Context;

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/jj;->cp:Ljava/lang/String;

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/jj;->On:Ljava/lang/String;

    iget-object v4, p0, Lcom/boJUF/mB/mB/VD/jj;->TP:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Lcom/boJUF/mB/mB/VD/Ke;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
