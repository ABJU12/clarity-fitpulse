;; FitPulse Token Contract

(define-fungible-token fit-pulse)

(define-constant contract-owner tx-sender)
(define-constant token-name "FitPulse")
(define-constant token-symbol "FIT")

(define-public (mint (amount uint) (recipient principal))
  (if (is-eq tx-sender contract-owner)
    (ft-mint? fit-pulse amount recipient)
    (err u403)
  )
)

(define-public (transfer (amount uint) (sender principal) (recipient principal))
  (ft-transfer? fit-pulse amount sender recipient)
)
