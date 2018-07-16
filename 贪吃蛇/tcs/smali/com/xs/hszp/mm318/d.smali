.class final Lcom/xs/hszp/mm318/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xs/hszp/mm318/b/i;


# instance fields
.field final synthetic a:Lcom/xs/hszp/mm318/c;

.field private final synthetic b:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xs/hszp/mm318/c;Lcom/xs/hszp/mm318/IOnXsMm318Listener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/d;->a:Lcom/xs/hszp/mm318/c;

    iput-object p2, p0, Lcom/xs/hszp/mm318/d;->b:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    iput-object p3, p0, Lcom/xs/hszp/mm318/d;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/xs/hszp/mm318/d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/xs/hszp/mm318/d;->b:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/xs/hszp/mm318/d;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xs/hszp/mm318/d;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/a/a/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xs/hszp/mm318/d;->b:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    const/4 v1, 0x0

    # invokes: Lcom/xs/hszp/mm318/XsMm318;->callXsMm318Listener(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V
    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/XsMm318;->access$1(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/xs/hszp/mm318/d;->b:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    const/4 v1, 0x1

    # invokes: Lcom/xs/hszp/mm318/XsMm318;->callXsMm318Listener(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V
    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/XsMm318;->access$1(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xs/hszp/mm318/d;->b:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    const/4 v1, -0x1

    # invokes: Lcom/xs/hszp/mm318/XsMm318;->callXsMm318Listener(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V
    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/XsMm318;->access$1(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V

    goto :goto_0
.end method
