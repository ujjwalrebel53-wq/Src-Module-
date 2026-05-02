.class public final synthetic Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/BufferedReader;

.field public final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda13;->f$0:Ljava/io/BufferedReader;

    iput-object p2, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda13;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda13;->f$0:Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda13;->f$1:Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/rebel/module/ZetDataManagementActivity;->lambda$runSuBlock$24(Ljava/io/BufferedReader;Ljava/lang/StringBuilder;)V

    return-void
.end method
