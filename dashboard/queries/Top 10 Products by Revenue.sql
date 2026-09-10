version: "1.1"
source: "SELECT product, SUM(total_amount_inr) AS revenue FROM fmcg.gold.vw_fact_orders_enriched GROUP BY product ORDER BY revenue DESC LIMIT 10"
dimensions:
  - name: product
    expr: product
    display_name: Product
measures:
  - name: revenue
    expr: SUM(revenue)
    display_name: Revenue
    format:
      type: currency
      currency_code: INR
      abbreviation: compact
      decimal_places:
        type: exact
        places: 0.0
