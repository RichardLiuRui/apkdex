.class final Lcom/xs/hszp/mm318/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/xs/hszp/mm318/IOnXsMm318Listener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xs/hszp/mm318/IOnXsMm318Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xs/hszp/mm318/c;->b:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSmsResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xs/hszp/mm318/c;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/xs/hszp/mm318/b/m;->a(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/xs/hszp/mm318/d;

    iget-object v3, p0, Lcom/xs/hszp/mm318/c;->b:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    iget-object v4, p0, Lcom/xs/hszp/mm318/c;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4, p4}, Lcom/xs/hszp/mm318/d;-><init>(Lcom/xs/hszp/mm318/c;Lcom/xs/hszp/mm318/IOnXsMm318Listener;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p2, v1, v2}, Lcom/xs/hszp/mm318/b/e;->a(Landroid/content/Context;Ljava/lang/String;[BLcom/xs/hszp/mm318/b/i;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xs/hszp/mm318/c;->b:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    const/4 v1, -0x1

    # invokes: Lcom/xs/hszp/mm318/XsMm318;->callXsMm318Listener(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V
    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/XsMm318;->access$1(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V

    goto :goto_0
.end method
