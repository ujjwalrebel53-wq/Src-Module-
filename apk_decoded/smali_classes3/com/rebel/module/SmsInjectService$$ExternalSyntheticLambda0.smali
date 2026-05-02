.class public final synthetic Lcom/rebel/module/SmsInjectService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/SmsInjectService;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/SmsInjectService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/SmsInjectService$$ExternalSyntheticLambda0;->f$0:Lcom/rebel/module/SmsInjectService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/rebel/module/SmsInjectService$$ExternalSyntheticLambda0;->f$0:Lcom/rebel/module/SmsInjectService;

    invoke-virtual {v0}, Lcom/rebel/module/SmsInjectService;->lambda$startMonitoring$0$com-src-module-SmsInjectService()V

    return-void
.end method
