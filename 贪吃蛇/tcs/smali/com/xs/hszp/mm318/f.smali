.class final Lcom/xs/hszp/mm318/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;


# instance fields
.field private final synthetic a:Lcom/xs/hszp/mm318/IOnReadySendSmsListener;


# direct methods
.method constructor <init>(Lcom/xs/hszp/mm318/IOnReadySendSmsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/f;->a:Lcom/xs/hszp/mm318/IOnReadySendSmsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSmsResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xs/hszp/mm318/f;->a:Lcom/xs/hszp/mm318/IOnReadySendSmsListener;

    invoke-static {p3}, Lcom/xs/hszp/mm318/b/m;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/xs/hszp/mm318/IOnReadySendSmsListener;->onReadySendSms(ILjava/lang/String;[BLjava/lang/String;)V

    return-void
.end method
