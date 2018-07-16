.class final Lcom/xs/hszp/mm318/b/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic a:Lcom/xs/hszp/mm318/b/j;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/xs/hszp/mm318/b/j;I)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/b/h;->a:Lcom/xs/hszp/mm318/b/j;

    iput p2, p0, Lcom/xs/hszp/mm318/b/h;->b:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/xs/hszp/mm318/b/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xs/hszp/mm318/b/h;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xs/hszp/mm318/b/h;->a:Lcom/xs/hszp/mm318/b/j;

    iget-object v0, v0, Lcom/xs/hszp/mm318/b/j;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/b/e;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/xs/hszp/mm318/b/h;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/xs/hszp/mm318/b/h;->a:Lcom/xs/hszp/mm318/b/j;

    iget-object v0, v0, Lcom/xs/hszp/mm318/b/j;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/b/e;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xs/hszp/mm318/b/h;->a:Lcom/xs/hszp/mm318/b/j;

    const-wide/16 v1, 0x7d0

    iput-wide v1, v0, Lcom/xs/hszp/mm318/b/j;->h:J

    iget v0, p0, Lcom/xs/hszp/mm318/b/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/xs/hszp/mm318/b/h;->a:Lcom/xs/hszp/mm318/b/j;

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/b/e;->a(ILcom/xs/hszp/mm318/b/j;)V

    goto :goto_0
.end method
